# -*- encoding: utf-8 -*-
# stub: chef-dk 0.14.25 ruby lib

Gem::Specification.new do |s|
  s.name = "chef-dk".freeze
  s.version = "0.14.25"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Daniel DeLeo".freeze, "Lamont Granquist".freeze, "Serdar Sutay".freeze]
  s.date = "2016-05-17"
  s.description = "A streamlined development and deployment workflow for Chef platform.".freeze
  s.email = ["dan@chef.io".freeze, "lamont@chef.io".freeze, "serdar@chef.io".freeze]
  s.executables = ["chef".freeze]
  s.files = ["bin/chef".freeze]
  s.homepage = "https://www.chef.io/".freeze
  s.post_install_message = "Thanks for installing chef-dk! Unfortunately, since Chef Development Kit is\nsupposed to be installed as the omnibus binaries in order to support various\nplatforms, this is not the official way to install chef-dk.\n\nPlease download the latest version for your operating system from the URL below,\nand make sure you have uninstalled your chef-dk gem to avoid conflicts:\n\nhttps://downloads.chef.io/chef-dk/\n\n".freeze
  s.required_ruby_version = Gem::Requirement.new(">= 2.0".freeze)
  s.rubygems_version = "2.6.4".freeze
  s.summary = "A streamlined development and deployment workflow for Chef platform.".freeze

  s.installed_by_version = "2.6.4" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<mixlib-cli>.freeze, ["~> 1.5"])
      s.add_runtime_dependency(%q<mixlib-shellout>.freeze, ["~> 2.0"])
      s.add_runtime_dependency(%q<ffi-yajl>.freeze, ["< 3.0", ">= 1.0"])
      s.add_runtime_dependency(%q<minitar>.freeze, ["~> 0.5.4"])
      s.add_runtime_dependency(%q<chef>.freeze, ["~> 12.5"])
      s.add_runtime_dependency(%q<solve>.freeze, [">= 2.0.1", "~> 2.0"])
      s.add_runtime_dependency(%q<cookbook-omnifetch>.freeze, [">= 0.2.2", "~> 0.2"])
      s.add_runtime_dependency(%q<diff-lcs>.freeze, ["~> 1.0"])
      s.add_runtime_dependency(%q<paint>.freeze, ["~> 1.0"])
      s.add_runtime_dependency(%q<chef-provisioning>.freeze, ["~> 1.2"])
      s.add_development_dependency(%q<github_changelog_generator>.freeze, [">= 0"])
      s.add_development_dependency(%q<rspec-core>.freeze, ["~> 3.0"])
      s.add_development_dependency(%q<rspec-expectations>.freeze, ["~> 3.0"])
      s.add_development_dependency(%q<rspec-mocks>.freeze, ["~> 3.0"])
    else
      s.add_dependency(%q<mixlib-cli>.freeze, ["~> 1.5"])
      s.add_dependency(%q<mixlib-shellout>.freeze, ["~> 2.0"])
      s.add_dependency(%q<ffi-yajl>.freeze, ["< 3.0", ">= 1.0"])
      s.add_dependency(%q<minitar>.freeze, ["~> 0.5.4"])
      s.add_dependency(%q<chef>.freeze, ["~> 12.5"])
      s.add_dependency(%q<solve>.freeze, [">= 2.0.1", "~> 2.0"])
      s.add_dependency(%q<cookbook-omnifetch>.freeze, [">= 0.2.2", "~> 0.2"])
      s.add_dependency(%q<diff-lcs>.freeze, ["~> 1.0"])
      s.add_dependency(%q<paint>.freeze, ["~> 1.0"])
      s.add_dependency(%q<chef-provisioning>.freeze, ["~> 1.2"])
      s.add_dependency(%q<github_changelog_generator>.freeze, [">= 0"])
      s.add_dependency(%q<rspec-core>.freeze, ["~> 3.0"])
      s.add_dependency(%q<rspec-expectations>.freeze, ["~> 3.0"])
      s.add_dependency(%q<rspec-mocks>.freeze, ["~> 3.0"])
    end
  else
    s.add_dependency(%q<mixlib-cli>.freeze, ["~> 1.5"])
    s.add_dependency(%q<mixlib-shellout>.freeze, ["~> 2.0"])
    s.add_dependency(%q<ffi-yajl>.freeze, ["< 3.0", ">= 1.0"])
    s.add_dependency(%q<minitar>.freeze, ["~> 0.5.4"])
    s.add_dependency(%q<chef>.freeze, ["~> 12.5"])
    s.add_dependency(%q<solve>.freeze, [">= 2.0.1", "~> 2.0"])
    s.add_dependency(%q<cookbook-omnifetch>.freeze, [">= 0.2.2", "~> 0.2"])
    s.add_dependency(%q<diff-lcs>.freeze, ["~> 1.0"])
    s.add_dependency(%q<paint>.freeze, ["~> 1.0"])
    s.add_dependency(%q<chef-provisioning>.freeze, ["~> 1.2"])
    s.add_dependency(%q<github_changelog_generator>.freeze, [">= 0"])
    s.add_dependency(%q<rspec-core>.freeze, ["~> 3.0"])
    s.add_dependency(%q<rspec-expectations>.freeze, ["~> 3.0"])
    s.add_dependency(%q<rspec-mocks>.freeze, ["~> 3.0"])
  end
end
