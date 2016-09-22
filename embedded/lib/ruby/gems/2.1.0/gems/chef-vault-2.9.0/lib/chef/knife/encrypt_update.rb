# Description: Chef-Vault EncryptUpdate class
# Copyright 2013-15, Nordstrom, Inc.

# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at

#     http://www.apache.org/licenses/LICENSE-2.0

# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

require "chef/knife/vault_base"
require "chef/knife/vault_update"

class Chef
  class Knife
    class EncryptUpdate < VaultUpdate
      include Knife::VaultBase

      option :search,
        :short => "-S SEARCH",
        :long => "--search SEARCH",
        :description => "Chef SOLR search for clients"

      option :admins,
        :short => "-A ADMINS",
        :long => "--admins ADMINS",
        :description => "Chef users to be added as admins"

      option :json,
        :short => "-J FILE",
        :long => "--json FILE",
        :description => "File containing JSON data to encrypt"

      option :file,
        :long => "--file FILE",
        :description => "File to be added to vault item as file-content"

      banner "knife encrypt update VAULT ITEM VALUES (options)"

      def run
        $stdout.puts "DEPRECATION WARNING: knife encrypt is deprecated. Please use knife vault instead."
        super
      end
    end
  end
end
