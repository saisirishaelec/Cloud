# -*- encoding: utf-8 -*-
# stub: chef-provisioning-vagrant 0.11.0 ruby lib

Gem::Specification.new do |s|
  s.name = "chef-provisioning-vagrant".freeze
  s.version = "0.11.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["John Keiser".freeze]
  s.date = "2015-10-21"
  s.description = "Driver for creating Vagrant instances in Chef Provisioning.".freeze
  s.email = "jkeiser@getchef.com".freeze
  s.extra_rdoc_files = ["README.md".freeze, "LICENSE".freeze]
  s.files = ["LICENSE".freeze, "README.md".freeze]
  s.homepage = "https://github.com/chef/chef-provisioning-vagrant".freeze
  s.rubygems_version = "2.6.4".freeze
  s.summary = "Driver for creating Vagrant instances in Chef Provisioning.".freeze

  s.installed_by_version = "2.6.4" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<chef-provisioning>.freeze, [">= 0"])
      s.add_development_dependency(%q<chef>.freeze, [">= 0"])
      s.add_development_dependency(%q<rspec>.freeze, [">= 0"])
      s.add_development_dependency(%q<rake>.freeze, [">= 0"])
    else
      s.add_dependency(%q<chef-provisioning>.freeze, [">= 0"])
      s.add_dependency(%q<chef>.freeze, [">= 0"])
      s.add_dependency(%q<rspec>.freeze, [">= 0"])
      s.add_dependency(%q<rake>.freeze, [">= 0"])
    end
  else
    s.add_dependency(%q<chef-provisioning>.freeze, [">= 0"])
    s.add_dependency(%q<chef>.freeze, [">= 0"])
    s.add_dependency(%q<rspec>.freeze, [">= 0"])
    s.add_dependency(%q<rake>.freeze, [">= 0"])
  end
end
