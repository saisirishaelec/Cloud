require 'chef/provider/lwrp_base'
require 'cheffish'

class Chef::Provider::VagrantCluster < Chef::Provider::LWRPBase

  use_inline_resources

  def whyrun_supported?
    true
  end

  action :create do
    the_base_path = new_resource.path
    Cheffish.inline_resource(self, :create) do
      directory the_base_path
      file ::File.join(the_base_path, 'Vagrantfile') do
        content <<EOM
Dir.glob('#{::File.join(the_base_path, '*.vm')}') do |vm_file|
  eval(IO.read(vm_file), nil, vm_file)
end
EOM
      end
    end
  end

  action :delete do
    the_base_path = new_resource.path
    Cheffish.inline_resource(self, :delete) do
      file ::File.join(the_base_path, 'Vagrantfile') do
        action :delete
      end
      directory the_base_path do
        action :delete
      end
    end
  end

  def load_current_resource
  end
end
