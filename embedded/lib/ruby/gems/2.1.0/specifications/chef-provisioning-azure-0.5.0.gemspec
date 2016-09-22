# -*- encoding: utf-8 -*-
# stub: chef-provisioning-azure 0.5.0 ruby lib

Gem::Specification.new do |s|
  s.name = "chef-provisioning-azure".freeze
  s.version = "0.5.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["John Ewart".freeze]
  s.date = "2016-02-03"
  s.description = "This is a driver that works with chef-provisioning that allows Chef Provisioning to manage objects in Microsoft Azure.".freeze
  s.email = "jewart@getchef.com".freeze
  s.extra_rdoc_files = ["README.md".freeze, "LICENSE".freeze]
  s.files = ["LICENSE".freeze, "README.md".freeze]
  s.homepage = "https://github.com/chef/chef-provisioning-azure".freeze
  s.licenses = ["Apache-2.0".freeze]
  s.rubygems_version = "2.6.4".freeze
  s.summary = "Provisioner for creating Microsoft Azure resources using Chef Provisioning.".freeze

  s.installed_by_version = "2.6.4" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<chef-provisioning>.freeze, ["~> 1.0"])
      s.add_runtime_dependency(%q<stuartpreston-azure-sdk-for-ruby>.freeze, ["~> 0.7"])
      s.add_development_dependency(%q<chef>.freeze, [">= 12.0"])
      s.add_development_dependency(%q<rspec>.freeze, [">= 0"])
      s.add_development_dependency(%q<rake>.freeze, [">= 0"])
      s.add_development_dependency(%q<yard>.freeze, [">= 0"])
      s.add_development_dependency(%q<github_changelog_generator>.freeze, [">= 0"])
    else
      s.add_dependency(%q<chef-provisioning>.freeze, ["~> 1.0"])
      s.add_dependency(%q<stuartpreston-azure-sdk-for-ruby>.freeze, ["~> 0.7"])
      s.add_dependency(%q<chef>.freeze, [">= 12.0"])
      s.add_dependency(%q<rspec>.freeze, [">= 0"])
      s.add_dependency(%q<rake>.freeze, [">= 0"])
      s.add_dependency(%q<yard>.freeze, [">= 0"])
      s.add_dependency(%q<github_changelog_generator>.freeze, [">= 0"])
    end
  else
    s.add_dependency(%q<chef-provisioning>.freeze, ["~> 1.0"])
    s.add_dependency(%q<stuartpreston-azure-sdk-for-ruby>.freeze, ["~> 0.7"])
    s.add_dependency(%q<chef>.freeze, [">= 12.0"])
    s.add_dependency(%q<rspec>.freeze, [">= 0"])
    s.add_dependency(%q<rake>.freeze, [">= 0"])
    s.add_dependency(%q<yard>.freeze, [">= 0"])
    s.add_dependency(%q<github_changelog_generator>.freeze, [">= 0"])
  end
end
