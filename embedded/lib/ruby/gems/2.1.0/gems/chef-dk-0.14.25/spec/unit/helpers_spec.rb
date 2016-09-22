#
# Copyright:: Copyright (c) 2014 Chef Software Inc.
# License:: Apache License, Version 2.0
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

require 'spec_helper'
require 'chef-dk/helpers'

describe ChefDK::Helpers do

  let (:helpers) do
    ChefDK::Helpers.send(:reset!)
    ChefDK::Helpers
  end

  let(:env) { {} }

  describe "chefdk_home" do
    before do
      allow(ENV).to receive(:[]) do |k|
        env[k]
      end
      allow(Chef::Platform).to receive(:windows?).and_return(false)
    end

    context 'when CHEFDK_HOME is set' do
      let(:env) { {'CHEFDK_HOME' => 'foo' } }
      it "returns CHEFDK_HOME" do
        expect(helpers.chefdk_home).to eq(env['CHEFDK_HOME'])
      end
    end

    context 'when CHEFDK_HOME is not set' do
      context 'on windows' do
        before do
          allow(Chef::Platform).to receive(:windows?).and_return(true)
        end

        let(:env) { { 'LOCALAPPDATA' => 'C:\\foo' } }

        it 'uses LOCALAPPDATA' do
          expect(File).to receive(:join).with(env['LOCALAPPDATA'], 'chefdk').and_return('chefdkdefaulthome')
          expect(helpers.chefdk_home).to eq('chefdkdefaulthome')
        end
      end

      context 'on *nix' do
        it 'uses LOCALAPPDATA' do
          expect(File).to receive(:expand_path).with('~/.chefdk').and_return('chefdkdefaulthome')
          expect(helpers.chefdk_home).to eq('chefdkdefaulthome')
        end
      end
    end

    context 'using usr_bin_prefix' do
      before do
        stub_const('RUBY_PLATFORM', ruby_platform_string)
      end

      context 'on Mac' do
        let(:ruby_platform_string) { 'x86_64-darwin12.0' }

        it 'uses /usr/local/bin' do
          expect(helpers.usr_bin_prefix).to eq('/usr/local/bin')
          expect(helpers.usr_bin_path('berks')).to eq('/usr/local/bin/berks')
        end
      end

      context 'on other systems' do
        let(:ruby_platform_string) { 'x86_64-linux' }

        it 'uses /usr/bin' do
          expect(helpers.usr_bin_prefix).to eq('/usr/bin')
          expect(helpers.usr_bin_path('berks')).to eq('/usr/bin/berks')
        end
      end
    end

  end
end
