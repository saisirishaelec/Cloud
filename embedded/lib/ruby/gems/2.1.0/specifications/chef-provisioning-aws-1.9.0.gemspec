# -*- encoding: utf-8 -*-
# stub: chef-provisioning-aws 1.9.0 ruby lib

Gem::Specification.new do |s|
  s.name = "chef-provisioning-aws".freeze
  s.version = "1.9.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["John Ewart".freeze]
  s.date = "2016-04-14"
  s.description = "Provisioner for creating aws containers in Chef Provisioning.".freeze
  s.email = "jewart@getchef.com".freeze
  s.extra_rdoc_files = ["README.md".freeze, "LICENSE".freeze]
  s.files = ["LICENSE".freeze, "README.md".freeze]
  s.homepage = "https://github.com/opscode/chef-provisioning-aws".freeze
  s.rubygems_version = "2.6.4".freeze
  s.summary = "Provisioner for creating aws containers in Chef Provisioning.".freeze

  s.installed_by_version = "2.6.4" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<chef-provisioning>.freeze, ["~> 1.4"])
      s.add_runtime_dependency(%q<aws-sdk-v1>.freeze, [">= 1.59.0"])
      s.add_runtime_dependency(%q<aws-sdk>.freeze, ["< 3.0", ">= 2.1.26"])
      s.add_runtime_dependency(%q<retryable>.freeze, [">= 2.0.1", "~> 2.0"])
      s.add_runtime_dependency(%q<ubuntu_ami>.freeze, [">= 0.4.1", "~> 0.4"])
      s.add_development_dependency(%q<chef-zero>.freeze, ["~> 4.2"])
      s.add_development_dependency(%q<chef>.freeze, ["~> 12.4"])
      s.add_development_dependency(%q<rspec>.freeze, ["~> 3.0"])
      s.add_development_dependency(%q<rake>.freeze, [">= 0"])
      s.add_development_dependency(%q<pry>.freeze, [">= 0"])
      s.add_development_dependency(%q<pry-byebug>.freeze, [">= 0"])
      s.add_development_dependency(%q<pry-stack_explorer>.freeze, [">= 0"])
      s.add_development_dependency(%q<github_changelog_generator>.freeze, [">= 0"])
    else
      s.add_dependency(%q<chef-provisioning>.freeze, ["~> 1.4"])
      s.add_dependency(%q<aws-sdk-v1>.freeze, [">= 1.59.0"])
      s.add_dependency(%q<aws-sdk>.freeze, ["< 3.0", ">= 2.1.26"])
      s.add_dependency(%q<retryable>.freeze, [">= 2.0.1", "~> 2.0"])
      s.add_dependency(%q<ubuntu_ami>.freeze, [">= 0.4.1", "~> 0.4"])
      s.add_dependency(%q<chef-zero>.freeze, ["~> 4.2"])
      s.add_dependency(%q<chef>.freeze, ["~> 12.4"])
      s.add_dependency(%q<rspec>.freeze, ["~> 3.0"])
      s.add_dependency(%q<rake>.freeze, [">= 0"])
      s.add_dependency(%q<pry>.freeze, [">= 0"])
      s.add_dependency(%q<pry-byebug>.freeze, [">= 0"])
      s.add_dependency(%q<pry-stack_explorer>.freeze, [">= 0"])
      s.add_dependency(%q<github_changelog_generator>.freeze, [">= 0"])
    end
  else
    s.add_dependency(%q<chef-provisioning>.freeze, ["~> 1.4"])
    s.add_dependency(%q<aws-sdk-v1>.freeze, [">= 1.59.0"])
    s.add_dependency(%q<aws-sdk>.freeze, ["< 3.0", ">= 2.1.26"])
    s.add_dependency(%q<retryable>.freeze, [">= 2.0.1", "~> 2.0"])
    s.add_dependency(%q<ubuntu_ami>.freeze, [">= 0.4.1", "~> 0.4"])
    s.add_dependency(%q<chef-zero>.freeze, ["~> 4.2"])
    s.add_dependency(%q<chef>.freeze, ["~> 12.4"])
    s.add_dependency(%q<rspec>.freeze, ["~> 3.0"])
    s.add_dependency(%q<rake>.freeze, [">= 0"])
    s.add_dependency(%q<pry>.freeze, [">= 0"])
    s.add_dependency(%q<pry-byebug>.freeze, [">= 0"])
    s.add_dependency(%q<pry-stack_explorer>.freeze, [">= 0"])
    s.add_dependency(%q<github_changelog_generator>.freeze, [">= 0"])
  end
end
