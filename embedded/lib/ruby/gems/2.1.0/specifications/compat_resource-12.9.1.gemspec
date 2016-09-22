# -*- encoding: utf-8 -*-
# stub: compat_resource 12.9.1 ruby files/lib

Gem::Specification.new do |s|
  s.name = "compat_resource".freeze
  s.version = "12.9.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["files/lib".freeze]
  s.authors = ["John Keiser".freeze]
  s.bindir = "files/bin".freeze
  s.date = "2016-03-23"
  s.description = "Bring some new features of Chef 12.5 to previous 12.X releases".freeze
  s.email = "john@johnkeiser.com".freeze
  s.homepage = "http://chef.io".freeze
  s.licenses = ["Apache 2.0".freeze]
  s.rubygems_version = "2.6.4".freeze
  s.summary = "Bring some new features of Chef 12.5 to previous 12.X releases".freeze

  s.installed_by_version = "2.6.4" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<rake>.freeze, [">= 0"])
      s.add_development_dependency(%q<rspec>.freeze, [">= 0"])
      s.add_development_dependency(%q<cheffish>.freeze, [">= 0"])
      s.add_development_dependency(%q<stove>.freeze, [">= 0"])
      s.add_development_dependency(%q<chef>.freeze, [">= 0"])
    else
      s.add_dependency(%q<rake>.freeze, [">= 0"])
      s.add_dependency(%q<rspec>.freeze, [">= 0"])
      s.add_dependency(%q<cheffish>.freeze, [">= 0"])
      s.add_dependency(%q<stove>.freeze, [">= 0"])
      s.add_dependency(%q<chef>.freeze, [">= 0"])
    end
  else
    s.add_dependency(%q<rake>.freeze, [">= 0"])
    s.add_dependency(%q<rspec>.freeze, [">= 0"])
    s.add_dependency(%q<cheffish>.freeze, [">= 0"])
    s.add_dependency(%q<stove>.freeze, [">= 0"])
    s.add_dependency(%q<chef>.freeze, [">= 0"])
  end
end
