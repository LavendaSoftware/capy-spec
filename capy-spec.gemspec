# frozen_string_literal: true

require_relative "lib/capy_spec/version"

Gem::Specification.new do |spec|
  spec.name = "capy-spec"
  spec.version = CapySpec::VERSION
  spec.authors = ["Walmir Neto"]
  spec.email = ["owalmirneto@gmail.com"]

  spec.summary = "capy-spec is a aggregation for rails application"
  spec.homepage = "https://github.com/LavendaSoftware/capy-spec"
  spec.license = "MIT"
  spec.required_ruby_version = ">= 3.0.0"

  spec.metadata["allowed_push_host"] = "https://rubygems.org"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = spec.homepage
  spec.metadata["changelog_uri"] = "#{spec.homepage}/commits/main"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(__dir__) do
    `git ls-files -z`.split("\x0").reject do |f|
      (File.expand_path(f) == __FILE__) ||
        f.start_with?(*%w[bin/ test/ spec/ features/ .git .github appveyor Gemfile])
    end
  end
  spec.bindir = "exe"
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  # https://github.com/presidentbeef/brakeman
  spec.add_dependency "brakeman", "~> 6.1.2"
  # https://github.com/standardrb/standard#usage
  spec.add_dependency "standard", "~> 1.33"
  # https://github.com/standardrb/standard-rails#usage
  spec.add_dependency "standard-rails", "~> 1.0"
  # https://github.com/rubocop/rubocop-rspec#usage
  spec.add_dependency "rubocop-rspec", "~> 2.26.1"
  # https://github.com/rubocop/rubocop-capybara#usage
  spec.add_dependency "rubocop-capybara", "~> 2.20"
  # https://github.com/rubocop/rubocop-factory_bot#usage
  spec.add_dependency "rubocop-factory_bot", "~> 2.25.1"
  # https://github.com/Shopify/erb-lint#installation
  spec.add_dependency "erb_lint", "~> 0.5.0"
  # https://github.com/thoughtbot/factory_bot_rails
  spec.add_dependency "factory_bot_rails", "~> 6.4.3"
  # https://github.com/stympy/faker
  spec.add_dependency "faker", "~> 3.2.3"
  # https://github.com/thoughtbot/shoulda-matchers
  spec.add_dependency "shoulda-matchers", "~> 6.1"
  # https://github.com/rspec/rspec-rails#installation
  spec.add_dependency "rspec-rails", "~> 6.1.1"
  # https://github.com/DatabaseCleaner/database_cleaner
  spec.add_dependency "database_cleaner", "~> 2.0.2"
  # https://github.com/teamcapybara/capybara#setup
  spec.add_dependency "capybara", "~> 3.40"
  # https://github.com/SeleniumHQ/selenium/tree/trunk/rb#install
  spec.add_dependency "selenium-webdriver", "~> 4.17"
  # https://github.com/simplecov-ruby/simplecov#getting-started
  spec.add_dependency "simplecov", "~> 0.22.0"
  # https://github.com/vicentllongo/simplecov-json#usage
  spec.add_dependency "simplecov-json", "~> 0.2.3"
  # https://github.com/bblimke/webmock#rspec
  spec.add_dependency "webmock", "~> 3.19"
end
