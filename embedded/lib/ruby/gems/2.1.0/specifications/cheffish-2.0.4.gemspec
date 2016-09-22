# -*- encoding: utf-8 -*-
# stub: cheffish 2.0.4 ruby lib

Gem::Specification.new do |s|
  s.name = "cheffish".freeze
  s.version = "2.0.4"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["John Keiser".freeze]
  s.date = "2016-04-14"
  s.description = "A library to manipulate Chef in Chef.".freeze
  s.email = "jkeiser@chef.io".freeze
  s.extra_rdoc_files = ["README.md".freeze, "LICENSE".freeze]
  s.files = ["LICENSE".freeze, "README.md".freeze]
  s.homepage = "http://github.com/chef/cheffish".freeze
  s.rubygems_version = "2.6.4".freeze
  s.summary = "A library to manipulate Chef in Chef.".freeze

  s.installed_by_version = "2.6.4" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<chef-zero>.freeze, ["~> 4.3"])
      s.add_runtime_dependency(%q<compat_resource>.freeze, [">= 0"])
      s.add_development_dependency(%q<chef>.freeze, ["~> 12.2"])
    else
      s.add_dependency(%q<chef-zero>.freeze, ["~> 4.3"])
      s.add_dependency(%q<compat_resource>.freeze, [">= 0"])
      s.add_dependency(%q<chef>.freeze, ["~> 12.2"])
    end
  else
    s.add_dependency(%q<chef-zero>.freeze, ["~> 4.3"])
    s.add_dependency(%q<compat_resource>.freeze, [">= 0"])
    s.add_dependency(%q<chef>.freeze, ["~> 12.2"])
  end
end
