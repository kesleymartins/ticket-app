source "https://rubygems.org"
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby "3.2.2"

gem "rails", "~> 7.0.6"
gem "sprockets-rails"
gem "sqlite3", "~> 1.4"
gem "puma", "~> 5.0"
gem "tzinfo-data", platforms: %i[ mingw mswin x64_mingw jruby ]
gem 'devise', '~> 4.9', '>= 4.9.2'
gem 'importmap-rails', '~> 1.2', '>= 1.2.1'
gem 'turbo-rails', '~> 1.4'
gem 'stimulus-rails', '~> 1.2', '>= 1.2.1'
gem 'enumerate_it', '~> 3.2', '>= 3.2.2'

# Gems needed for fly.io deploy
gem "pg", "~> 1.5"
gem "redis", "~> 5.0"
gem "sentry-ruby", "~> 5.10"
gem "sentry-rails", "~> 5.10"

group :development, :test do
  gem "debug", platforms: %i[ mri mingw x64_mingw ]
end

group :development do
  gem "dockerfile-rails", ">= 1.5"
end