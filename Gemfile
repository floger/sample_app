source 'http://ruby.taobao.org'
#ruby '2.0.0'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'

#gem 'thin'
gem 'rails', '4.0.0'
gem 'bootstrap-sass','3.0.0'
gem 'bcrypt-ruby','~> 3.0.0'
gem 'rb-readline',require: false
gem 'faker'
gem 'will_paginate'
gem 'bootstrap-will_paginate',"~> 0.0.10"
# Use mysql as the database for Active Record
group  :development,:test do
  gem 'pry-rails'
  gem 'mysql2'
  gem 'rspec-rails'
  gem 'guard-rspec'
  gem 'spork-rails'
  gem 'guard-spork'
  gem 'childprocess'
  gem "better_errors"
  gem "binding_of_caller"
  gem 'meta_request'
end

group :test do
  gem 'selenium-webdriver'
  gem 'capybara'
  gem 'factory_girl_rails'
  gem 'cucumber-rails', require: false
  gem 'database_cleaner',github: 'bmabey/database_cleaner'
end


# Use SCSS for stylesheets
gem 'sass-rails', '~> 4.0.0'

# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'

# Use CoffeeScript for .js.coffee assets and views
gem 'coffee-rails', '~> 4.0.0'

# See https://github.com/sstephenson/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby

# Use jquery as the JavaScript library
gem 'jquery-rails'

# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'

# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 1.2'

group :doc do
  # bundle exec rake doc:rails generates the API under doc/api.
  gem 'sdoc', require: false
end

group :production do
  gem 'pg'
  gem 'rails_12factor'
end

# Use ActiveModel has_secure_password
# gem 'bcrypt-ruby', '~> 3.0.0'

# Use unicorn as the app server
# gem 'unicorn'

# Use Capistrano for deployment
# gem 'capistrano', group: :development

# Use debugger
# gem 'debugger', group: [:development, :test]
