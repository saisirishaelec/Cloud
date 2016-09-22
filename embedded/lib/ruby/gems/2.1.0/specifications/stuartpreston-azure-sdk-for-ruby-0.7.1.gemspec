# -*- encoding: utf-8 -*-
# stub: stuartpreston-azure-sdk-for-ruby 0.7.1 ruby lib

Gem::Specification.new do |s|
  s.name = "stuartpreston-azure-sdk-for-ruby".freeze
  s.version = "0.7.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Microsoft Corporation".freeze, "Pendrica".freeze]
  s.date = "2015-04-13"
  s.description = "Microsoft Azure Client Library for Ruby".freeze
  s.email = "stuart@pendrica.com".freeze
  s.homepage = "http://github.com/stuartpreston/azure-sdk-for-ruby".freeze
  s.licenses = ["Apache License, Version 2.0".freeze]
  s.required_ruby_version = Gem::Requirement.new(">= 2.0".freeze)
  s.rubygems_version = "2.6.4".freeze
  s.summary = "Ruby client library to consume Microsoft Azure services.".freeze

  s.installed_by_version = "2.6.4" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<nokogiri>.freeze, ["~> 1.5"])
      s.add_runtime_dependency(%q<mime-types>.freeze, ["~> 2.0"])
      s.add_runtime_dependency(%q<json>.freeze, ["~> 1.8"])
      s.add_runtime_dependency(%q<uuid>.freeze, ["~> 2.0"])
      s.add_runtime_dependency(%q<systemu>.freeze, ["~> 2.6"])
      s.add_development_dependency(%q<rake>.freeze, ["~> 10.0"])
      s.add_development_dependency(%q<minitest>.freeze, ["= 3.5.0"])
      s.add_development_dependency(%q<mocha>.freeze, ["~> 1.0"])
      s.add_development_dependency(%q<turn>.freeze, ["~> 0.9"])
      s.add_development_dependency(%q<timecop>.freeze, ["~> 0.7"])
    else
      s.add_dependency(%q<nokogiri>.freeze, ["~> 1.5"])
      s.add_dependency(%q<mime-types>.freeze, ["~> 2.0"])
      s.add_dependency(%q<json>.freeze, ["~> 1.8"])
      s.add_dependency(%q<uuid>.freeze, ["~> 2.0"])
      s.add_dependency(%q<systemu>.freeze, ["~> 2.6"])
      s.add_dependency(%q<rake>.freeze, ["~> 10.0"])
      s.add_dependency(%q<minitest>.freeze, ["= 3.5.0"])
      s.add_dependency(%q<mocha>.freeze, ["~> 1.0"])
      s.add_dependency(%q<turn>.freeze, ["~> 0.9"])
      s.add_dependency(%q<timecop>.freeze, ["~> 0.7"])
    end
  else
    s.add_dependency(%q<nokogiri>.freeze, ["~> 1.5"])
    s.add_dependency(%q<mime-types>.freeze, ["~> 2.0"])
    s.add_dependency(%q<json>.freeze, ["~> 1.8"])
    s.add_dependency(%q<uuid>.freeze, ["~> 2.0"])
    s.add_dependency(%q<systemu>.freeze, ["~> 2.6"])
    s.add_dependency(%q<rake>.freeze, ["~> 10.0"])
    s.add_dependency(%q<minitest>.freeze, ["= 3.5.0"])
    s.add_dependency(%q<mocha>.freeze, ["~> 1.0"])
    s.add_dependency(%q<turn>.freeze, ["~> 0.9"])
    s.add_dependency(%q<timecop>.freeze, ["~> 0.7"])
  end
end
