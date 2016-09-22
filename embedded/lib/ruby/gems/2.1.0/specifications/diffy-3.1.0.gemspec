# -*- encoding: utf-8 -*-
# stub: diffy 3.1.0 ruby lib

Gem::Specification.new do |s|
  s.name = "diffy".freeze
  s.version = "3.1.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Sam Goldstein".freeze]
  s.date = "2015-12-17"
  s.description = "Convenient diffing in ruby".freeze
  s.email = ["sgrock@gmail.org".freeze]
  s.homepage = "http://github.com/samg/diffy".freeze
  s.licenses = ["MIT".freeze]
  s.rubygems_version = "2.6.4".freeze
  s.summary = "A convenient way to diff string in ruby".freeze

  s.installed_by_version = "2.6.4" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<rake>.freeze, [">= 0"])
      s.add_development_dependency(%q<rspec>.freeze, ["~> 2.14"])
    else
      s.add_dependency(%q<rake>.freeze, [">= 0"])
      s.add_dependency(%q<rspec>.freeze, ["~> 2.14"])
    end
  else
    s.add_dependency(%q<rake>.freeze, [">= 0"])
    s.add_dependency(%q<rspec>.freeze, ["~> 2.14"])
  end
end
