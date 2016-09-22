# -*- encoding: utf-8 -*-
# stub: berkshelf-api-client 2.0.2 ruby lib

Gem::Specification.new do |s|
  s.name = "berkshelf-api-client".freeze
  s.version = "2.0.2"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Jamie Winsor".freeze, "Michael Ivey".freeze, "Seth Vargo".freeze]
  s.date = "2016-03-08"
  s.description = "API Client for communicating with a Berkshelf API server".freeze
  s.email = ["jamie@vialstudios.com".freeze, "michael.ivey@riotgames.com".freeze, "sethvargo@gmail.com".freeze]
  s.homepage = "http://berkshelf.com".freeze
  s.licenses = ["Apache 2.0".freeze]
  s.required_ruby_version = Gem::Requirement.new(">= 2.0.0".freeze)
  s.rubygems_version = "2.6.4".freeze
  s.summary = "API Client for communicating with a Berkshelf API server".freeze

  s.installed_by_version = "2.6.4" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<faraday>.freeze, ["~> 0.9.1"])
      s.add_runtime_dependency(%q<httpclient>.freeze, ["~> 2.7.0"])
      s.add_runtime_dependency(%q<ridley>.freeze, ["~> 4.5"])
      s.add_development_dependency(%q<bundler>.freeze, ["~> 1.3"])
      s.add_development_dependency(%q<rake>.freeze, [">= 0"])
      s.add_development_dependency(%q<fuubar>.freeze, ["~> 1.1"])
      s.add_development_dependency(%q<rspec>.freeze, ["~> 2.13"])
      s.add_development_dependency(%q<spork>.freeze, ["~> 0.9"])
      s.add_development_dependency(%q<yard>.freeze, ["~> 0.8"])
    else
      s.add_dependency(%q<faraday>.freeze, ["~> 0.9.1"])
      s.add_dependency(%q<httpclient>.freeze, ["~> 2.7.0"])
      s.add_dependency(%q<ridley>.freeze, ["~> 4.5"])
      s.add_dependency(%q<bundler>.freeze, ["~> 1.3"])
      s.add_dependency(%q<rake>.freeze, [">= 0"])
      s.add_dependency(%q<fuubar>.freeze, ["~> 1.1"])
      s.add_dependency(%q<rspec>.freeze, ["~> 2.13"])
      s.add_dependency(%q<spork>.freeze, ["~> 0.9"])
      s.add_dependency(%q<yard>.freeze, ["~> 0.8"])
    end
  else
    s.add_dependency(%q<faraday>.freeze, ["~> 0.9.1"])
    s.add_dependency(%q<httpclient>.freeze, ["~> 2.7.0"])
    s.add_dependency(%q<ridley>.freeze, ["~> 4.5"])
    s.add_dependency(%q<bundler>.freeze, ["~> 1.3"])
    s.add_dependency(%q<rake>.freeze, [">= 0"])
    s.add_dependency(%q<fuubar>.freeze, ["~> 1.1"])
    s.add_dependency(%q<rspec>.freeze, ["~> 2.13"])
    s.add_dependency(%q<spork>.freeze, ["~> 0.9"])
    s.add_dependency(%q<yard>.freeze, ["~> 0.8"])
  end
end
