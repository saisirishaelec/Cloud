# -*- encoding: utf-8 -*-
# stub: appbundler 0.9.0 ruby lib

Gem::Specification.new do |s|
  s.name = "appbundler".freeze
  s.version = "0.9.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["danielsdeleo".freeze]
  s.date = "2016-05-17"
  s.description = "Extracts a dependency solution from bundler's Gemfile.lock to speed gem activation".freeze
  s.email = ["dan@opscode.com".freeze]
  s.executables = ["appbundler".freeze]
  s.files = [".gitignore".freeze, ".rspec".freeze, ".travis.yml".freeze, "Gemfile".freeze, "LICENSE.txt".freeze, "README.md".freeze, "Rakefile".freeze, "appbundler.gemspec".freeze, "bin/appbundler".freeze, "lib/appbundler.rb".freeze, "lib/appbundler/app.rb".freeze, "lib/appbundler/cli.rb".freeze, "lib/appbundler/version.rb".freeze, "spec/appbundler/app_spec.rb".freeze, "spec/fixtures/appbundler-example-app/.bundle/config".freeze, "spec/fixtures/appbundler-example-app/Gemfile".freeze, "spec/fixtures/appbundler-example-app/Gemfile.lock.unix".freeze, "spec/fixtures/appbundler-example-app/Gemfile.lock.windows".freeze, "spec/fixtures/appbundler-example-app/README.md".freeze, "spec/fixtures/appbundler-example-app/appbundler-example-app.gemspec".freeze, "spec/fixtures/appbundler-example-app/bin/app-binary-1".freeze, "spec/fixtures/appbundler-example-app/bin/app-binary-2".freeze, "spec/fixtures/appbundler-example-app/lib/example_app.rb".freeze, "spec/spec_helper.rb".freeze]
  s.homepage = "".freeze
  s.licenses = ["Apache2".freeze]
  s.rubygems_version = "2.6.4".freeze
  s.summary = "Extracts a dependency solution from bundler's Gemfile.lock to speed gem activation".freeze
  s.test_files = ["spec/appbundler/app_spec.rb".freeze, "spec/fixtures/appbundler-example-app/.bundle/config".freeze, "spec/fixtures/appbundler-example-app/Gemfile".freeze, "spec/fixtures/appbundler-example-app/Gemfile.lock.unix".freeze, "spec/fixtures/appbundler-example-app/Gemfile.lock.windows".freeze, "spec/fixtures/appbundler-example-app/README.md".freeze, "spec/fixtures/appbundler-example-app/appbundler-example-app.gemspec".freeze, "spec/fixtures/appbundler-example-app/bin/app-binary-1".freeze, "spec/fixtures/appbundler-example-app/bin/app-binary-2".freeze, "spec/fixtures/appbundler-example-app/lib/example_app.rb".freeze, "spec/spec_helper.rb".freeze]

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<rake>.freeze, [">= 0"])
      s.add_development_dependency(%q<rspec>.freeze, ["~> 3.0"])
      s.add_development_dependency(%q<pry>.freeze, [">= 0"])
      s.add_development_dependency(%q<mixlib-shellout>.freeze, ["~> 1.0"])
      s.add_runtime_dependency(%q<mixlib-cli>.freeze, ["~> 1.4"])
    else
      s.add_dependency(%q<rake>.freeze, [">= 0"])
      s.add_dependency(%q<rspec>.freeze, ["~> 3.0"])
      s.add_dependency(%q<pry>.freeze, [">= 0"])
      s.add_dependency(%q<mixlib-shellout>.freeze, ["~> 1.0"])
      s.add_dependency(%q<mixlib-cli>.freeze, ["~> 1.4"])
    end
  else
    s.add_dependency(%q<rake>.freeze, [">= 0"])
    s.add_dependency(%q<rspec>.freeze, ["~> 3.0"])
    s.add_dependency(%q<pry>.freeze, [">= 0"])
    s.add_dependency(%q<mixlib-shellout>.freeze, ["~> 1.0"])
    s.add_dependency(%q<mixlib-cli>.freeze, ["~> 1.4"])
  end
end
