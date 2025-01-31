source 'https://rubygems.org'

ruby '3.3.0'

gem 'rails', '~> 7.1.5'
gem 'pg'

gem 'puma', '>= 5.0'

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: %i[ mswin mswin64 mingw x64_mingw jruby ]

# Reduces boot times through caching; required in config/boot.rb
gem 'bootsnap', require: false

# Use Active Storage variants [https://guides.rubyonrails.org/active_storage_overview.html#transforming-images]
# gem 'image_processing', '~> 1.2'

# Use Rack CORS for handling Cross-Origin Resource Sharing (CORS), making cross-origin Ajax possible
# gem 'rack-cors'

group :development, :test do
  gem 'debug', platforms: %i[ mri mswin mswin64 mingw x64_mingw ]
  gem "rspec-rails", "~> 7.1"
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
