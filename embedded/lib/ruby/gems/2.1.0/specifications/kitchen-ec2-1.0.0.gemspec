# -*- encoding: utf-8 -*-
# stub: kitchen-ec2 1.0.0 ruby lib

Gem::Specification.new do |s|
  s.name = "kitchen-ec2".freeze
  s.version = "1.0.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Fletcher Nichol".freeze]
  s.date = "2016-03-03"
  s.description = "A Test Kitchen Driver for Amazon EC2".freeze
  s.email = ["fnichol@nichol.ca".freeze]
  s.homepage = "http://kitchen.ci/".freeze
  s.licenses = ["Apache 2.0".freeze]
  s.rubygems_version = "2.6.4".freeze
  s.summary = "A Test Kitchen Driver for Amazon EC2".freeze

  s.installed_by_version = "2.6.4" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<test-kitchen>.freeze, [">= 1.4.1", "~> 1.4"])
      s.add_runtime_dependency(%q<excon>.freeze, [">= 0"])
      s.add_runtime_dependency(%q<multi_json>.freeze, [">= 0"])
      s.add_runtime_dependency(%q<aws-sdk>.freeze, ["~> 2"])
      s.add_runtime_dependency(%q<retryable>.freeze, ["~> 2.0"])
      s.add_development_dependency(%q<rspec>.freeze, ["~> 3.2"])
      s.add_development_dependency(%q<countloc>.freeze, ["~> 0.4"])
      s.add_development_dependency(%q<maruku>.freeze, ["~> 0.6"])
      s.add_development_dependency(%q<simplecov>.freeze, ["~> 0.7"])
      s.add_development_dependency(%q<yard>.freeze, ["~> 0.8"])
      s.add_development_dependency(%q<finstyle>.freeze, ["= 1.4.0"])
      s.add_development_dependency(%q<climate_control>.freeze, [">= 0"])
    else
      s.add_dependency(%q<test-kitchen>.freeze, [">= 1.4.1", "~> 1.4"])
      s.add_dependency(%q<excon>.freeze, [">= 0"])
      s.add_dependency(%q<multi_json>.freeze, [">= 0"])
      s.add_dependency(%q<aws-sdk>.freeze, ["~> 2"])
      s.add_dependency(%q<retryable>.freeze, ["~> 2.0"])
      s.add_dependency(%q<rspec>.freeze, ["~> 3.2"])
      s.add_dependency(%q<countloc>.freeze, ["~> 0.4"])
      s.add_dependency(%q<maruku>.freeze, ["~> 0.6"])
      s.add_dependency(%q<simplecov>.freeze, ["~> 0.7"])
      s.add_dependency(%q<yard>.freeze, ["~> 0.8"])
      s.add_dependency(%q<finstyle>.freeze, ["= 1.4.0"])
      s.add_dependency(%q<climate_control>.freeze, [">= 0"])
    end
  else
    s.add_dependency(%q<test-kitchen>.freeze, [">= 1.4.1", "~> 1.4"])
    s.add_dependency(%q<excon>.freeze, [">= 0"])
    s.add_dependency(%q<multi_json>.freeze, [">= 0"])
    s.add_dependency(%q<aws-sdk>.freeze, ["~> 2"])
    s.add_dependency(%q<retryable>.freeze, ["~> 2.0"])
    s.add_dependency(%q<rspec>.freeze, ["~> 3.2"])
    s.add_dependency(%q<countloc>.freeze, ["~> 0.4"])
    s.add_dependency(%q<maruku>.freeze, ["~> 0.6"])
    s.add_dependency(%q<simplecov>.freeze, ["~> 0.7"])
    s.add_dependency(%q<yard>.freeze, ["~> 0.8"])
    s.add_dependency(%q<finstyle>.freeze, ["= 1.4.0"])
    s.add_dependency(%q<climate_control>.freeze, [">= 0"])
  end
end
