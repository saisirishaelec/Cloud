require 'chef/provisioning/vagrant_driver/driver'

Chef::Provisioning.register_driver_class("vagrant", Chef::Provisioning::VagrantDriver::Driver)
