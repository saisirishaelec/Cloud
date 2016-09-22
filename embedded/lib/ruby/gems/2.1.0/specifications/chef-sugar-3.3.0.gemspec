# -*- encoding: utf-8 -*-
# stub: chef-sugar 3.3.0 ruby lib

Gem::Specification.new do |s|
  s.name = "chef-sugar".freeze
  s.version = "3.3.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Seth Vargo".freeze]
  s.date = "2016-01-11"
  s.description = "A series of helpful sugar of the Chef core and other resources to make a cleaner, more lean recipe DSL, enforce DRY principles, and make writing Chef recipes an awesome experience!".freeze
  s.email = ["sethvargo@gmail.com".freeze]
  s.homepage = "https://github.com/sethvargo/chef-sugar".freeze
  s.licenses = ["Apache 2.0".freeze]
  s.required_ruby_version = Gem::Requirement.new(">= 1.9".freeze)
  s.rubygems_version = "2.6.4".freeze
  s.summary = "A collection of helper methods and modules that make working with Chef recipes awesome.".freeze

  s.installed_by_version = "2.6.4" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<bundler>.freeze, ["~> 1.3"])
      s.add_development_dependency(%q<rake>.freeze, [">= 0"])
      s.add_development_dependency(%q<chefspec>.freeze, ["~> 4.2"])
      s.add_development_dependency(%q<test-kitchen>.freeze, ["~> 1.3"])
      s.add_development_dependency(%q<kitchen-vagrant>.freeze, ["~> 0.15"])
    else
      s.add_dependency(%q<bundler>.freeze, ["~> 1.3"])
      s.add_dependency(%q<rake>.freeze, [">= 0"])
      s.add_dependency(%q<chefspec>.freeze, ["~> 4.2"])
      s.add_dependency(%q<test-kitchen>.freeze, ["~> 1.3"])
      s.add_dependency(%q<kitchen-vagrant>.freeze, ["~> 0.15"])
    end
  else
    s.add_dependency(%q<bundler>.freeze, ["~> 1.3"])
    s.add_dependency(%q<rake>.freeze, [">= 0"])
    s.add_dependency(%q<chefspec>.freeze, ["~> 4.2"])
    s.add_dependency(%q<test-kitchen>.freeze, ["~> 1.3"])
    s.add_dependency(%q<kitchen-vagrant>.freeze, ["~> 0.15"])
  end
end
