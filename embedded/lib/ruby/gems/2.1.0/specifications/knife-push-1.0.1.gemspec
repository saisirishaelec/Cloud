# -*- encoding: utf-8 -*-
# stub: knife-push 1.0.1 ruby lib

Gem::Specification.new do |s|
  s.name = "knife-push".freeze
  s.version = "1.0.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["John Keiser".freeze]
  s.date = "2016-05-05"
  s.description = "Knife plugin for chef push".freeze
  s.email = "jkeiser@opscode.com".freeze
  s.extra_rdoc_files = ["README.rdoc".freeze, "LICENSE".freeze]
  s.files = ["LICENSE".freeze, "README.rdoc".freeze]
  s.homepage = "http://www.chef.io".freeze
  s.rubygems_version = "2.6.4".freeze
  s.summary = "Knife plugin for chef push".freeze

  s.installed_by_version = "2.6.4" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<chef>.freeze, [">= 11.10.4"])
      s.add_development_dependency(%q<rspec>.freeze, [">= 0"])
      s.add_development_dependency(%q<rake>.freeze, [">= 0"])
    else
      s.add_dependency(%q<chef>.freeze, [">= 11.10.4"])
      s.add_dependency(%q<rspec>.freeze, [">= 0"])
      s.add_dependency(%q<rake>.freeze, [">= 0"])
    end
  else
    s.add_dependency(%q<chef>.freeze, [">= 11.10.4"])
    s.add_dependency(%q<rspec>.freeze, [">= 0"])
    s.add_dependency(%q<rake>.freeze, [">= 0"])
  end
end
