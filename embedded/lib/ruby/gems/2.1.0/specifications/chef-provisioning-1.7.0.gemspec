# -*- encoding: utf-8 -*-
# stub: chef-provisioning 1.7.0 ruby lib

Gem::Specification.new do |s|
  s.name = "chef-provisioning".freeze
  s.version = "1.7.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["John Keiser".freeze]
  s.date = "2016-04-06"
  s.description = "A library for creating machines and infrastructures idempotently in Chef.".freeze
  s.email = "jkeiser@chef.io".freeze
  s.extra_rdoc_files = ["README.md".freeze, "CHANGELOG.md".freeze, "LICENSE".freeze]
  s.files = ["CHANGELOG.md".freeze, "LICENSE".freeze, "README.md".freeze]
  s.homepage = "http://github.com/chef/chef-provisioning/README.md".freeze
  s.rubygems_version = "2.6.4".freeze
  s.summary = "A library for creating machines and infrastructures idempotently in Chef.".freeze

  s.installed_by_version = "2.6.4" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<net-ssh>.freeze, ["< 4.0", ">= 2.9"])
      s.add_runtime_dependency(%q<net-scp>.freeze, ["~> 1.0"])
      s.add_runtime_dependency(%q<net-ssh-gateway>.freeze, ["~> 1.2.0"])
      s.add_runtime_dependency(%q<inifile>.freeze, [">= 2.0.2"])
      s.add_runtime_dependency(%q<cheffish>.freeze, ["< 3.0", ">= 1.3.1"])
      s.add_runtime_dependency(%q<winrm>.freeze, ["~> 1.3"])
      s.add_runtime_dependency(%q<mixlib-install>.freeze, ["~> 1.0"])
      s.add_development_dependency(%q<chef>.freeze, ["!= 12.4.0", "~> 12.1"])
      s.add_development_dependency(%q<rspec>.freeze, [">= 0"])
      s.add_development_dependency(%q<rake>.freeze, [">= 0"])
      s.add_development_dependency(%q<pry>.freeze, [">= 0"])
      s.add_development_dependency(%q<simplecov>.freeze, [">= 0"])
      s.add_development_dependency(%q<github_changelog_generator>.freeze, [">= 0"])
    else
      s.add_dependency(%q<net-ssh>.freeze, ["< 4.0", ">= 2.9"])
      s.add_dependency(%q<net-scp>.freeze, ["~> 1.0"])
      s.add_dependency(%q<net-ssh-gateway>.freeze, ["~> 1.2.0"])
      s.add_dependency(%q<inifile>.freeze, [">= 2.0.2"])
      s.add_dependency(%q<cheffish>.freeze, ["< 3.0", ">= 1.3.1"])
      s.add_dependency(%q<winrm>.freeze, ["~> 1.3"])
      s.add_dependency(%q<mixlib-install>.freeze, ["~> 1.0"])
      s.add_dependency(%q<chef>.freeze, ["!= 12.4.0", "~> 12.1"])
      s.add_dependency(%q<rspec>.freeze, [">= 0"])
      s.add_dependency(%q<rake>.freeze, [">= 0"])
      s.add_dependency(%q<pry>.freeze, [">= 0"])
      s.add_dependency(%q<simplecov>.freeze, [">= 0"])
      s.add_dependency(%q<github_changelog_generator>.freeze, [">= 0"])
    end
  else
    s.add_dependency(%q<net-ssh>.freeze, ["< 4.0", ">= 2.9"])
    s.add_dependency(%q<net-scp>.freeze, ["~> 1.0"])
    s.add_dependency(%q<net-ssh-gateway>.freeze, ["~> 1.2.0"])
    s.add_dependency(%q<inifile>.freeze, [">= 2.0.2"])
    s.add_dependency(%q<cheffish>.freeze, ["< 3.0", ">= 1.3.1"])
    s.add_dependency(%q<winrm>.freeze, ["~> 1.3"])
    s.add_dependency(%q<mixlib-install>.freeze, ["~> 1.0"])
    s.add_dependency(%q<chef>.freeze, ["!= 12.4.0", "~> 12.1"])
    s.add_dependency(%q<rspec>.freeze, [">= 0"])
    s.add_dependency(%q<rake>.freeze, [">= 0"])
    s.add_dependency(%q<pry>.freeze, [">= 0"])
    s.add_dependency(%q<simplecov>.freeze, [">= 0"])
    s.add_dependency(%q<github_changelog_generator>.freeze, [">= 0"])
  end
end
