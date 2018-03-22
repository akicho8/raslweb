source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 5.1.0.beta1'
# Use sqlite3 as the database for Active Record
gem 'mysql2'
# Use Puma as the app server
gem 'puma', '~> 3.7'
# Use SCSS for stylesheets
gem 'sass-rails', github: "rails/sass-rails"

# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# Transpile app-like JavaScript. Read more: https://github.com/rails/webpacker
# gem 'webpacker', github: "rails/webpacker"

# See https://github.com/rails/execjs#readme for more supported runtimes
gem 'therubyracer', platforms: :ruby

# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.2'
# Turbolinks makes navigating your web application faster. Read more: https://github.com/turbolinks/turbolinks
gem 'turbolinks', '~> 5'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.5'
# Use Redis adapter to run Action Cable in production
# gem 'redis', '~> 3.0'
# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  # Adds support for Capybara system testing and selenium driver
  gem 'capybara', '~> 2.7.0'
  gem 'selenium-webdriver'
end

group :development do
  # Access an IRB console on exception pages or by using <%= console %> anywhere in the code.
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '>= 3.0.5', '< 3.2'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]

# -------------------------------------------------------------------------------- old

# source 'https://rubygems.org'
# 
# # Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
# gem 'rails', '~> 5.0.0', '>= 5.0.0.1'
# # Use mysql as the database for Active Record
# gem 'mysql2', '>= 0.3.18', '< 0.5'
# gem 'sqlite3'
# # Use Puma as the app server
# gem 'puma', '~> 3.0'
# # Use SCSS for stylesheets
# gem 'sass-rails', '~> 5.0'
# # Use Uglifier as compressor for JavaScript assets
# gem 'uglifier', '>= 1.3.0'
# # Use CoffeeScript for .coffee assets and views
# gem 'coffee-rails', '~> 4.2'
# # See https://github.com/rails/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby # node.js が入っていない環境では必要
# 
# # Use jquery as the JavaScript library
# gem 'jquery-rails'
# # Turbolinks makes navigating your web application faster. Read more: https://github.com/turbolinks/turbolinks
# gem 'turbolinks', '~> 5'
# # Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
# gem 'jbuilder', '~> 2.5'
# # Use Redis adapter to run Action Cable in production
# # gem 'redis', '~> 3.0'
# # Use ActiveModel has_secure_password
# # gem 'bcrypt', '~> 3.1.7'
# 
# # Use Capistrano for deployment
# # gem 'capistrano-rails', group: :development
# 
# gem 'activerecord-session_store'
# 
# group :development, :test do
#   # Call 'byebug' anywhere in the code to stop execution and get a debugger console
#   gem 'byebug', platform: :mri
# end
# 
# group :development do
#   # Access an IRB console on exception pages or by using <%= console %> anywhere in the code.
#   gem 'web-console'
#   gem 'listen', '~> 3.0.5'
#   # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
#   gem 'spring'
#   gem 'spring-watcher-listen', '~> 2.0.0'
# end
# 
# # Windows does not include zoneinfo files, so bundle the tzinfo-data gem
# gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]

# ################################################################################

group :development, :test do
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring-commands-rspec'

  gem 'capistrano', "3.6.1", require: false
  gem 'capistrano-rails', require: false        # capistrano + capistrano-bundler
  gem 'capistrano-passenger', require: false
  gem 'capistrano-rbenv', require: false
  gem 'capistrano-withrsync', require: false
  gem 'capistrano-yarn', require: false

  gem 'rspec-rails'
  gem 'test-unit'
end

gem "jquery-rails"              # jquery3.js だけ使う

gem "twitter-bootstrap-rails", "< 4.0.0" # Twitter社が提供しているCSSとJavaScriptのフレームワーク
gem "font-awesome-sass"

# gem 'compass-rails'
gem 'slim-rails'
gem 'rails_autolink'
gem 'kaminari'

gem 'rasl', :github => 'akicho8/rasl'
