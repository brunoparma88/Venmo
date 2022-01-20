source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.7.2'

# Reduces boot times through caching; required in config/boot.rb
gem 'bootsnap', '>= 1.4.2', require: false
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.7'
# Use postgresql as the database for Active Record
gem 'pg', '~> 1.2.3'
# Use Puma as the app server
gem 'puma', '~> 5.0'
gem 'pundit', '~> 2.1'
# Bundle edge Rails instead: gem 'rails', github: 'rails/rails', branch: 'main'
gem 'rails', '~> 6.1.4', '>= 6.1.4.1'
# Use SCSS for stylesheets
gem 'sass-rails', '>= 6'
# Turbolinks makes navigating your web application faster. Read more: https://github.com/turbolinks/turbolinks
gem 'turbolinks', '~> 5'
# Transpile app-like JavaScript. Read more: https://github.com/rails/webpacker
gem 'webpacker', '~> 5.1', '>= 5.1.1'

# Use Redis adapter to run Action Cable in production
# gem 'redis', '~> 4.0'
# Use Active Model has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use Active Storage variant
# gem 'image_processing', '~> 1.2'

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  gem 'factory_bot_rails', '~> 6.1'
  gem 'rspec-rails', '~> 5.0', '>= 5.0.2'
end

group :development do
  gem 'annotate', '~> 3.1', '>= 3.1.1'
  gem 'brakeman', '~> 5.0', '>= 5.0.1'
  gem 'listen', '~> 3.3'
  gem 'rack-mini-profiler', '~> 2.0'
  gem 'rails_best_practices', '~> 1.20'
  gem 'reek', '~> 6.1'
  gem 'rubocop-rails', '~> 2.5', require: false
  gem 'rubocop-rootstrap', '~> 1.1'
  gem 'spring'
  gem 'web-console', '>= 4.1.0'
end

group :test do
  gem 'faker', '~> 2.13'
  gem 'rspec-json_expectations', '~> 2.1.0'
  gem 'shoulda-matchers', '~> 4.1', '>= 4.1.2'
  gem 'simplecov', '~> 0.13.0', require: false
  gem 'webmock', '~> 3.7', '>= 3.7.6'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
