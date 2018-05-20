# frozen_string_literal: true

source "https://rubygems.org"

gemspec

# gem "archangel", path: "../archangel"

group :development do
  gem "rubocop", "~> 0.52", require: false
end

group :development, :test do
  gem "pry-byebug", "~> 3.5"
  gem "sqlite3", ">= 1.3", platforms: %i[ruby mswin mswin64 mingw x64_mingw]
  gem "thor", "~> 0.19"
end

group :test do
  gem "capybara", "~> 2.17"
  gem "coveralls", "~> 0.8"
  gem "database_cleaner", "~> 1.6"
  gem "factory_bot_rails", "~> 4.8"
  gem "launchy", "~> 2.4"
  gem "poltergeist", "~> 1.17"
  gem "rails-controller-testing", "~> 1.0"
  gem "rspec-rails", "~> 3.7"
  gem "shoulda-callback-matchers", "~> 1.1"
  gem "shoulda-matchers", "~> 3.1"
  gem "simplecov", "~> 0.14"
end
