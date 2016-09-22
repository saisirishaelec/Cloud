# -*- encoding: utf-8 -*-
# stub: mixlib-log 1.6.0 ruby lib

Gem::Specification.new do |s|
  s.name = "mixlib-log".freeze
  s.version = "1.6.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Opscode, Inc.".freeze]
  s.date = "2013-04-02"
  s.email = "info@opscode.com".freeze
  s.extra_rdoc_files = ["README.rdoc".freeze, "LICENSE".freeze, "NOTICE".freeze]
  s.files = ["LICENSE".freeze, "NOTICE".freeze, "README.rdoc".freeze]
  s.homepage = "http://www.opscode.com".freeze
  s.rubygems_version = "2.6.4".freeze
  s.summary = "A gem that provides a simple mixin for log functionality".freeze

  s.installed_by_version = "2.6.4" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<rake>.freeze, [">= 0"])
      s.add_development_dependency(%q<rspec>.freeze, ["~> 2.10"])
      s.add_development_dependency(%q<cucumber>.freeze, [">= 0"])
    else
      s.add_dependency(%q<rake>.freeze, [">= 0"])
      s.add_dependency(%q<rspec>.freeze, ["~> 2.10"])
      s.add_dependency(%q<cucumber>.freeze, [">= 0"])
    end
  else
    s.add_dependency(%q<rake>.freeze, [">= 0"])
    s.add_dependency(%q<rspec>.freeze, ["~> 2.10"])
    s.add_dependency(%q<cucumber>.freeze, [">= 0"])
  end
end
