# -*- encoding: utf-8 -*-
# stub: berkshelf-api 2.1.3 ruby lib

Gem::Specification.new do |s|
  s.name = "berkshelf-api".freeze
  s.version = "2.1.3"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Jamie Winsor".freeze, "Andrew Garson".freeze]
  s.date = "2016-05-17"
  s.description = "Berkshelf dependency API server".freeze
  s.email = ["jamie@vialstudios.com".freeze, "agarson@riotgames".freeze]
  s.executables = ["berks-api".freeze]
  s.files = ["CHANGELOG.md".freeze, "LICENSE".freeze, "README.md".freeze, "bin/berks-api".freeze, "lib/berkshelf".freeze, "lib/berkshelf-api.rb".freeze, "lib/berkshelf/api".freeze, "lib/berkshelf/api.rb".freeze, "lib/berkshelf/api/application.rb".freeze, "lib/berkshelf/api/cache_builder".freeze, "lib/berkshelf/api/cache_builder.rb".freeze, "lib/berkshelf/api/cache_builder/worker".freeze, "lib/berkshelf/api/cache_builder/worker.rb".freeze, "lib/berkshelf/api/cache_builder/worker/chef_server.rb".freeze, "lib/berkshelf/api/cache_builder/worker/file_store.rb".freeze, "lib/berkshelf/api/cache_builder/worker/github.rb".freeze, "lib/berkshelf/api/cache_builder/worker/supermarket.rb".freeze, "lib/berkshelf/api/cache_manager.rb".freeze, "lib/berkshelf/api/config.rb".freeze, "lib/berkshelf/api/core_ext".freeze, "lib/berkshelf/api/core_ext.rb".freeze, "lib/berkshelf/api/core_ext/pathname.rb".freeze, "lib/berkshelf/api/cucumber.rb".freeze, "lib/berkshelf/api/dependency_cache.rb".freeze, "lib/berkshelf/api/endpoint".freeze, "lib/berkshelf/api/endpoint.rb".freeze, "lib/berkshelf/api/endpoint/v1.rb".freeze, "lib/berkshelf/api/errors.rb".freeze, "lib/berkshelf/api/generic_server.rb".freeze, "lib/berkshelf/api/logging.rb".freeze, "lib/berkshelf/api/mixin".freeze, "lib/berkshelf/api/mixin.rb".freeze, "lib/berkshelf/api/mixin/services.rb".freeze, "lib/berkshelf/api/rack_app.rb".freeze, "lib/berkshelf/api/remote_cookbook.rb".freeze, "lib/berkshelf/api/rest_gateway.rb".freeze, "lib/berkshelf/api/rspec".freeze, "lib/berkshelf/api/rspec.rb".freeze, "lib/berkshelf/api/rspec/server.rb".freeze, "lib/berkshelf/api/site_connector".freeze, "lib/berkshelf/api/site_connector.rb".freeze, "lib/berkshelf/api/site_connector/supermarket.rb".freeze, "lib/berkshelf/api/srv_ctl.rb".freeze, "lib/berkshelf/api/version.rb".freeze, "spec/fixtures/cookbooks/example_cookbook/metadata.rb".freeze, "spec/spec_helper.rb".freeze, "spec/support/actor_mocking.rb".freeze, "spec/support/chef_server.rb".freeze, "spec/support/human_reaable.rb".freeze, "spec/unit/berkshelf/api/application_spec.rb".freeze, "spec/unit/berkshelf/api/cache_builder/worker/chef_server_spec.rb".freeze, "spec/unit/berkshelf/api/cache_builder/worker/file_store_spec.rb".freeze, "spec/unit/berkshelf/api/cache_builder/worker/github_spec.rb".freeze, "spec/unit/berkshelf/api/cache_builder/worker/supermarket_spec.rb".freeze, "spec/unit/berkshelf/api/cache_builder/worker_spec.rb".freeze, "spec/unit/berkshelf/api/cache_builder_spec.rb".freeze, "spec/unit/berkshelf/api/cache_manager_spec.rb".freeze, "spec/unit/berkshelf/api/config_spec.rb".freeze, "spec/unit/berkshelf/api/dependency_cache_spec.rb".freeze, "spec/unit/berkshelf/api/endpoint/v1_spec.rb".freeze, "spec/unit/berkshelf/api/logging_spec.rb".freeze, "spec/unit/berkshelf/api/mixin/services_spec.rb".freeze, "spec/unit/berkshelf/api/rack_app_spec.rb".freeze, "spec/unit/berkshelf/api/rest_gateway_spec.rb".freeze, "spec/unit/berkshelf/api/site_connector/supermarket_spec.rb".freeze, "spec/unit/berkshelf/api/srv_ctl_spec.rb".freeze]
  s.homepage = "https://github.com/berkshelf/berkshelf-api".freeze
  s.licenses = ["Apache 2.0".freeze]
  s.required_ruby_version = Gem::Requirement.new(">= 1.9.3".freeze)
  s.rubygems_version = "2.6.4".freeze
  s.summary = "A server which indexes cookbooks from various sources and hosts it over a REST API".freeze
  s.test_files = ["spec/support/human_reaable.rb".freeze, "spec/support/chef_server.rb".freeze, "spec/support/actor_mocking.rb".freeze, "spec/spec_helper.rb".freeze, "spec/fixtures/cookbooks/example_cookbook/metadata.rb".freeze, "spec/unit/berkshelf/api/config_spec.rb".freeze, "spec/unit/berkshelf/api/rack_app_spec.rb".freeze, "spec/unit/berkshelf/api/mixin/services_spec.rb".freeze, "spec/unit/berkshelf/api/cache_builder_spec.rb".freeze, "spec/unit/berkshelf/api/srv_ctl_spec.rb".freeze, "spec/unit/berkshelf/api/endpoint/v1_spec.rb".freeze, "spec/unit/berkshelf/api/logging_spec.rb".freeze, "spec/unit/berkshelf/api/rest_gateway_spec.rb".freeze, "spec/unit/berkshelf/api/application_spec.rb".freeze, "spec/unit/berkshelf/api/cache_manager_spec.rb".freeze, "spec/unit/berkshelf/api/cache_builder/worker_spec.rb".freeze, "spec/unit/berkshelf/api/cache_builder/worker/github_spec.rb".freeze, "spec/unit/berkshelf/api/cache_builder/worker/supermarket_spec.rb".freeze, "spec/unit/berkshelf/api/cache_builder/worker/file_store_spec.rb".freeze, "spec/unit/berkshelf/api/cache_builder/worker/chef_server_spec.rb".freeze, "spec/unit/berkshelf/api/dependency_cache_spec.rb".freeze, "spec/unit/berkshelf/api/site_connector/supermarket_spec.rb".freeze]

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<ridley>.freeze, ["~> 4.4"])
      s.add_runtime_dependency(%q<celluloid>.freeze, ["~> 0.16"])
      s.add_runtime_dependency(%q<celluloid-io>.freeze, ["~> 0.16"])
      s.add_runtime_dependency(%q<reel>.freeze, ["~> 0.6.0"])
      s.add_runtime_dependency(%q<grape>.freeze, ["~> 0.14.0"])
      s.add_runtime_dependency(%q<grape-msgpack>.freeze, ["~> 0.1"])
      s.add_runtime_dependency(%q<hashie>.freeze, ["< 4.0.0", ">= 2.0.4"])
      s.add_runtime_dependency(%q<archive>.freeze, ["= 0.0.6"])
      s.add_runtime_dependency(%q<buff-config>.freeze, ["~> 1.0"])
      s.add_runtime_dependency(%q<octokit>.freeze, ["< 5.0.0", ">= 3.0.0"])
      s.add_runtime_dependency(%q<semverse>.freeze, ["~> 1.0"])
      s.add_runtime_dependency(%q<varia_model>.freeze, ["< 0.5.0", ">= 0.4.0"])
    else
      s.add_dependency(%q<ridley>.freeze, ["~> 4.4"])
      s.add_dependency(%q<celluloid>.freeze, ["~> 0.16"])
      s.add_dependency(%q<celluloid-io>.freeze, ["~> 0.16"])
      s.add_dependency(%q<reel>.freeze, ["~> 0.6.0"])
      s.add_dependency(%q<grape>.freeze, ["~> 0.14.0"])
      s.add_dependency(%q<grape-msgpack>.freeze, ["~> 0.1"])
      s.add_dependency(%q<hashie>.freeze, ["< 4.0.0", ">= 2.0.4"])
      s.add_dependency(%q<archive>.freeze, ["= 0.0.6"])
      s.add_dependency(%q<buff-config>.freeze, ["~> 1.0"])
      s.add_dependency(%q<octokit>.freeze, ["< 5.0.0", ">= 3.0.0"])
      s.add_dependency(%q<semverse>.freeze, ["~> 1.0"])
      s.add_dependency(%q<varia_model>.freeze, ["< 0.5.0", ">= 0.4.0"])
    end
  else
    s.add_dependency(%q<ridley>.freeze, ["~> 4.4"])
    s.add_dependency(%q<celluloid>.freeze, ["~> 0.16"])
    s.add_dependency(%q<celluloid-io>.freeze, ["~> 0.16"])
    s.add_dependency(%q<reel>.freeze, ["~> 0.6.0"])
    s.add_dependency(%q<grape>.freeze, ["~> 0.14.0"])
    s.add_dependency(%q<grape-msgpack>.freeze, ["~> 0.1"])
    s.add_dependency(%q<hashie>.freeze, ["< 4.0.0", ">= 2.0.4"])
    s.add_dependency(%q<archive>.freeze, ["= 0.0.6"])
    s.add_dependency(%q<buff-config>.freeze, ["~> 1.0"])
    s.add_dependency(%q<octokit>.freeze, ["< 5.0.0", ">= 3.0.0"])
    s.add_dependency(%q<semverse>.freeze, ["~> 1.0"])
    s.add_dependency(%q<varia_model>.freeze, ["< 0.5.0", ">= 0.4.0"])
  end
end
