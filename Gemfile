source 'http://rubygems.org'

ruby '2.3.0'
gem 'rails', '4.2.6'
gem 'simple_form', '~> 3.2', '>= 3.2.1'
# Bundle edge Rails instead:
# gem 'rails',     :git => 'git://github.com/rails/rails.git'

# for Heroku deployment - as described in Ap. A of ELLS book
group :development, :test do
#  gem 'bootstrap-sass'
#  gem 'bcrypt'
  gem 'sqlite3'
  gem 'byebug'
  gem 'database_cleaner', '1.4.1'
  gem 'capybara', '2.4.4'
  gem 'launchy'
  gem 'rspec-rails', '3.3.2'
  gem 'ZenTest', '4.11.0'
  gem 'shoulda-matchers', require: false
  gem 'orderly'
#  gem 'rails-assets-bootstrap'
end

group :test do
  gem 'simplecov'
  gem 'cucumber-rails', :require => false
  gem 'cucumber-rails-training-wheels'
end
group :production do
#  gem 'simplecov'
  gem 'rails_12factor'
  gem 'pg'
end

# Gems used only for assets and not required
# in production environments by default.

  #gem 'therubyracer', '~> 0.12.0'
gem 'sass-rails', '~> 5.0.3'
gem 'coffee-rails', '~> 4.1.0'
gem 'uglifier', '>= 2.7.1'

gem 'jquery-rails'
gem 'haml'

gem 'bootstrap-slider-rails'
gem 'bootstrap-sass', '~> 3.1.0'
# Use unicorn as the web server
# gem 'unicorn'

# Deploy with Capistrano
# gem 'capistrano'
gem 'bcrypt'