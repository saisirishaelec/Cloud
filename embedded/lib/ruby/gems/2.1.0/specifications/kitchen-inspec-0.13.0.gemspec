# -*- encoding: utf-8 -*-
# stub: kitchen-inspec 0.13.0 ruby lib

Gem::Specification.new do |s|
  s.name = "kitchen-inspec".freeze
  s.version = "0.13.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Fletcher Nichol".freeze]
  s.bindir = "exe".freeze
  s.date = "2016-05-10"
  s.description = "A Test Kitchen Verifier for InSpec".freeze
  s.email = ["fnichol@chef.io".freeze]
  s.homepage = "http://github.com/chef/kitchen-inspec".freeze
  s.licenses = ["Apache-2.0".freeze]
  s.rubygems_version = "2.6.4".freeze
  s.summary = "A Test Kitchen Verifier for InSpec".freeze

  s.installed_by_version = "2.6.4" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<inspec>.freeze, ["< 1.0.0", ">= 0.20.0"])
      s.add_runtime_dependency(%q<test-kitchen>.freeze, ["~> 1.6"])
      s.add_development_dependency(%q<countloc>.freeze, ["~> 0.4"])
      s.add_development_dependency(%q<bundler>.freeze, ["~> 1.10"])
      s.add_development_dependency(%q<rake>.freeze, ["~> 10.0"])
      s.add_development_dependency(%q<rspec>.freeze, [">= 0"])
      s.add_development_dependency(%q<simplecov>.freeze, ["~> 0.10"])
      s.add_development_dependency(%q<finstyle>.freeze, ["= 1.5.0"])
    else
      s.add_dependency(%q<inspec>.freeze, ["< 1.0.0", ">= 0.20.0"])
      s.add_dependency(%q<test-kitchen>.freeze, ["~> 1.6"])
      s.add_dependency(%q<countloc>.freeze, ["~> 0.4"])
      s.add_dependency(%q<bundler>.freeze, ["~> 1.10"])
      s.add_dependency(%q<rake>.freeze, ["~> 10.0"])
      s.add_dependency(%q<rspec>.freeze, [">= 0"])
      s.add_dependency(%q<simplecov>.freeze, ["~> 0.10"])
      s.add_dependency(%q<finstyle>.freeze, ["= 1.5.0"])
    end
  else
    s.add_dependency(%q<inspec>.freeze, ["< 1.0.0", ">= 0.20.0"])
    s.add_dependency(%q<test-kitchen>.freeze, ["~> 1.6"])
    s.add_dependency(%q<countloc>.freeze, ["~> 0.4"])
    s.add_dependency(%q<bundler>.freeze, ["~> 1.10"])
    s.add_dependency(%q<rake>.freeze, ["~> 10.0"])
    s.add_dependency(%q<rspec>.freeze, [">= 0"])
    s.add_dependency(%q<simplecov>.freeze, ["~> 0.10"])
    s.add_dependency(%q<finstyle>.freeze, ["= 1.5.0"])
  end
end
