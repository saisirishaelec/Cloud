# -*- encoding: utf-8 -*-
# stub: opscode-pushy-client 1.3.4 ruby lib

Gem::Specification.new do |s|
  s.name = "opscode-pushy-client".freeze
  s.version = "1.3.4"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Mark Anderson".freeze]
  s.date = "2016-05-17"
  s.description = "Client for Chef push jobs server".freeze
  s.email = ["mark@chef.io".freeze]
  s.executables = ["pushy-client".freeze, "pushy-service-manager".freeze]
  s.files = ["CHANGELOG.md".freeze, "CONTRIBUTING.md".freeze, "Gemfile".freeze, "LICENSE".freeze, "README.md".freeze, "Rakefile".freeze, "bin/pushy-client".freeze, "bin/pushy-service-manager".freeze, "jenkins/jenkins_run_tests.sh".freeze, "keys/client_private.pem".freeze, "keys/server_public.pem".freeze, "lib/pushy_client.rb".freeze, "lib/pushy_client/cli.rb".freeze, "lib/pushy_client/heartbeater.rb".freeze, "lib/pushy_client/job_runner.rb".freeze, "lib/pushy_client/periodic_reconfigurer.rb".freeze, "lib/pushy_client/protocol_handler.rb".freeze, "lib/pushy_client/version.rb".freeze, "lib/pushy_client/whitelist.rb".freeze, "lib/pushy_client/win32.rb".freeze, "lib/pushy_client/windows_service.rb".freeze, "opscode-pushy-client.gemspec".freeze, "spec/pushy_client".freeze, "spec/pushy_client/whitelist_spec.rb".freeze, "spec/spec_helper.rb".freeze]
  s.homepage = "https://github.com/chef/opscode-pushy-client".freeze
  s.rubygems_version = "2.6.4".freeze
  s.summary = "Client for Chef push jobs server".freeze
  s.test_files = ["spec/spec_helper.rb".freeze, "spec/pushy_client".freeze, "spec/pushy_client/whitelist_spec.rb".freeze]

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<chef>.freeze, [">= 12.0"])
      s.add_runtime_dependency(%q<ohai>.freeze, [">= 0"])
      s.add_runtime_dependency(%q<ffi-rzmq>.freeze, [">= 0"])
      s.add_runtime_dependency(%q<uuidtools>.freeze, [">= 0"])
      s.add_development_dependency(%q<rdoc>.freeze, [">= 0"])
      s.add_development_dependency(%q<rspec_junit_formatter>.freeze, [">= 0"])
    else
      s.add_dependency(%q<chef>.freeze, [">= 12.0"])
      s.add_dependency(%q<ohai>.freeze, [">= 0"])
      s.add_dependency(%q<ffi-rzmq>.freeze, [">= 0"])
      s.add_dependency(%q<uuidtools>.freeze, [">= 0"])
      s.add_dependency(%q<rdoc>.freeze, [">= 0"])
      s.add_dependency(%q<rspec_junit_formatter>.freeze, [">= 0"])
    end
  else
    s.add_dependency(%q<chef>.freeze, [">= 12.0"])
    s.add_dependency(%q<ohai>.freeze, [">= 0"])
    s.add_dependency(%q<ffi-rzmq>.freeze, [">= 0"])
    s.add_dependency(%q<uuidtools>.freeze, [">= 0"])
    s.add_dependency(%q<rdoc>.freeze, [">= 0"])
    s.add_dependency(%q<rspec_junit_formatter>.freeze, [">= 0"])
  end
end
