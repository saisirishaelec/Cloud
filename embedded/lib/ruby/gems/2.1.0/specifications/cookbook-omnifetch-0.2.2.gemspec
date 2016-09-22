# -*- encoding: utf-8 -*-
# stub: cookbook-omnifetch 0.2.2 ruby lib

Gem::Specification.new do |s|
  s.name = "cookbook-omnifetch".freeze
  s.version = "0.2.2"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Jamie Winsor".freeze, "Josiah Kiehl".freeze, "Michael Ivey".freeze, "Justin Campbell".freeze, "Seth Vargo".freeze, "Daniel DeLeo".freeze]
  s.date = "2015-10-13"
  s.email = ["jamie@vialstudios.com".freeze, "jkiehl@riotgames.com".freeze, "michael.ivey@riotgames.com".freeze, "justin@justincampbell.me".freeze, "sethvargo@gmail.com".freeze, "dan@getchef.com".freeze]
  s.homepage = "http://www.getchef.com/".freeze
  s.licenses = ["Apache 2.0".freeze]
  s.rubygems_version = "2.6.4".freeze
  s.summary = "Library code to fetch Chef cookbooks from a variety of sources to a local cache".freeze

  s.installed_by_version = "2.6.4" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<minitar>.freeze, ["~> 0.5.4"])
      s.add_development_dependency(%q<rake>.freeze, ["~> 10.3"])
      s.add_development_dependency(%q<rspec>.freeze, ["~> 3.0"])
    else
      s.add_dependency(%q<minitar>.freeze, ["~> 0.5.4"])
      s.add_dependency(%q<rake>.freeze, ["~> 10.3"])
      s.add_dependency(%q<rspec>.freeze, ["~> 3.0"])
    end
  else
    s.add_dependency(%q<minitar>.freeze, ["~> 0.5.4"])
    s.add_dependency(%q<rake>.freeze, ["~> 10.3"])
    s.add_dependency(%q<rspec>.freeze, ["~> 3.0"])
  end
end
