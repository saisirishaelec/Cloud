# -*- encoding: utf-8 -*-
#
# Author:: Tyler Ball (<tball@chef.io>)
#
# Copyright (C) 2015, Fletcher Nichol
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#    http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

require "base64"

module Kitchen

  module Driver

    class Aws

      # A class for encapsulating the instance payload logic
      #
      # @author Tyler Ball <tball@chef.io>
      class InstanceGenerator

        attr_reader :config, :ec2, :logger

        def initialize(config, ec2, logger)
          @config = config
          @ec2 = ec2
          @logger = logger
        end

        # Transform the provided config into the hash to send to AWS.  Some fields
        # can be passed in null, others need to be ommitted if they are null
        def ec2_instance_data # rubocop:disable Metrics/MethodLength, Metrics/AbcSize
          i = {
            :instance_type                => config[:instance_type],
            :ebs_optimized                => config[:ebs_optimized],
            :image_id                     => config[:image_id],
            :key_name                     => config[:aws_ssh_key_id],
            :subnet_id                    => config[:subnet_id],
            :private_ip_address           => config[:private_ip_address]
          }

          availability_zone = config[:availability_zone]
          if availability_zone
            if availability_zone =~ /^[a-z]$/i
              availability_zone = "#{config[:region]}#{availability_zone}"
            end
            i[:placement] = { :availability_zone => availability_zone.downcase }
          end
          unless config[:block_device_mappings].nil? || config[:block_device_mappings].empty?
            i[:block_device_mappings] = config[:block_device_mappings]
          end
          i[:security_group_ids] = Array(config[:security_group_ids]) if config[:security_group_ids]
          i[:user_data] = prepared_user_data if prepared_user_data
          if config[:iam_profile_name]
            i[:iam_instance_profile] = { :name => config[:iam_profile_name] }
          end
          if !config.fetch(:associate_public_ip, nil).nil?
            i[:network_interfaces] =
              [{
                :device_index => 0,
                :associate_public_ip_address => config[:associate_public_ip],
                :delete_on_termination => true
              }]
            # If specifying `:network_interfaces` in the request, you must specify
            # network specific configs in the network_interfaces block and not at
            # the top level
            if config[:subnet_id]
              i[:network_interfaces][0][:subnet_id] = i.delete(:subnet_id)
            end
            if config[:private_ip_address]
              i[:network_interfaces][0][:private_ip_address] = i.delete(:private_ip_address)
            end
            if config[:security_group_ids]
              i[:network_interfaces][0][:groups] = i.delete(:security_group_ids)
            end
          end
          i
        end

        def prepared_user_data
          # If user_data is a file reference, lets read it as such
          return nil if config[:user_data].nil?
          @user_data ||= begin
            if File.file?(config[:user_data])
              @user_data = File.read(config[:user_data])
            else
              @user_data = config[:user_data]
            end
            @user_data = Base64.encode64(@user_data)
          end
        end

      end

    end

  end

end
