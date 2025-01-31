source 'https://rubygems.org'

ruby '3.3.0'

gem 'rails', '~> 7.1.5'
gem 'pg'

gem 'puma', '>= 5.0'
gem 'tzinfo-data', platforms: %i[ mswin mswin64 mingw x64_mingw jruby ]
gem 'active_model_serializers'

gem 'bootsnap', require: false

group :development, :test do
  gem 'debug', platforms: %i[ mri mswin mswin64 mingw x64_mingw ]
  gem "rspec-rails", "~> 7.1"
  gem 'dotenv-rails'
end

group :development do
  gem 'spring'
  gem 'pry-byebug'
  gem 'awesome_print'
end

group :test do
  gem 'shoulda-matchers', '~> 5.0'
  gem 'factory_bot_rails'
  gem 'faker'
end
