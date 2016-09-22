# -*- encoding: utf-8 -*-
# stub: knife-supermarket 0.2.4 ruby lib

Gem::Specification.new do |s|
  s.name = "knife-supermarket".freeze
  s.version = "0.2.4"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Christopher Webber".freeze]
  s.date = "2016-03-04"
  s.description = "Knife support for interacting with Chef Supermarkets".freeze
  s.email = "cwebber@getchef.com".freeze
  s.homepage = "https://github.com/cwebberOps/knife-supermarket".freeze
  s.licenses = ["Apache 2.0".freeze]
  s.rubygems_version = "2.6.4".freeze
  s.summary = "Knife support for interacting with Chef Supermarkets".freeze

  s.installed_by_version = "2.6.4" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<chef>.freeze, [">= 0.10.10"])
    else
      s.add_dependency(%q<chef>.freeze, [">= 0.10.10"])
    end
  else
    s.add_dependency(%q<chef>.freeze, [">= 0.10.10"])
  end
end
