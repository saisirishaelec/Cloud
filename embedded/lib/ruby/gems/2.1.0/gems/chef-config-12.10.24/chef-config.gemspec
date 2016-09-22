# -*- encoding: utf-8 -*-
# stub: chef-config 12.10.24 ruby lib

Gem::Specification.new do |s|
  s.name = "chef-config".freeze
  s.version = "12.10.24"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Adam Jacob".freeze]
  s.date = "2016-05-17"
  s.email = ["adam@chef.io".freeze]
  s.files = ["LICENSE".freeze, "README.md".freeze, "Rakefile".freeze, "chef-config.gemspec".freeze, "lib/chef-config.rb".freeze, "lib/chef-config/config.rb".freeze, "lib/chef-config/exceptions.rb".freeze, "lib/chef-config/logger.rb".freeze, "lib/chef-config/mixin/dot_d.rb".freeze, "lib/chef-config/mixin/fuzzy_hostname_matcher.rb".freeze, "lib/chef-config/package_task.rb".freeze, "lib/chef-config/path_helper.rb".freeze, "lib/chef-config/version.rb".freeze, "lib/chef-config/windows.rb".freeze, "lib/chef-config/workstation_config_loader.rb".freeze, "spec/spec_helper.rb".freeze, "spec/unit/config_spec.rb".freeze, "spec/unit/path_helper_spec.rb".freeze, "spec/unit/workstation_config_loader_spec.rb".freeze]
  s.homepage = "https://github.com/chef/chef".freeze
  s.licenses = ["Apache-2.0".freeze]
  s.rubygems_version = "2.6.4".freeze
  s.summary = "Chef's default configuration and config loading".freeze

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<mixlib-shellout>.freeze, ["~> 2.0"])
      s.add_runtime_dependency(%q<mixlib-config>.freeze, ["~> 2.0"])
      s.add_runtime_dependency(%q<fuzzyurl>.freeze, ["~> 0.8.0"])
      s.add_development_dependency(%q<rake>.freeze, ["~> 10.0"])
      s.add_development_dependency(%q<rspec-core>.freeze, ["~> 3.2"])
      s.add_development_dependency(%q<rspec-expectations>.freeze, ["~> 3.2"])
      s.add_development_dependency(%q<rspec-mocks>.freeze, ["~> 3.2"])
    else
      s.add_dependency(%q<mixlib-shellout>.freeze, ["~> 2.0"])
      s.add_dependency(%q<mixlib-config>.freeze, ["~> 2.0"])
      s.add_dependency(%q<fuzzyurl>.freeze, ["~> 0.8.0"])
      s.add_dependency(%q<rake>.freeze, ["~> 10.0"])
      s.add_dependency(%q<rspec-core>.freeze, ["~> 3.2"])
      s.add_dependency(%q<rspec-expectations>.freeze, ["~> 3.2"])
      s.add_dependency(%q<rspec-mocks>.freeze, ["~> 3.2"])
    end
  else
    s.add_dependency(%q<mixlib-shellout>.freeze, ["~> 2.0"])
    s.add_dependency(%q<mixlib-config>.freeze, ["~> 2.0"])
    s.add_dependency(%q<fuzzyurl>.freeze, ["~> 0.8.0"])
    s.add_dependency(%q<rake>.freeze, ["~> 10.0"])
    s.add_dependency(%q<rspec-core>.freeze, ["~> 3.2"])
    s.add_dependency(%q<rspec-expectations>.freeze, ["~> 3.2"])
    s.add_dependency(%q<rspec-mocks>.freeze, ["~> 3.2"])
  end
end
