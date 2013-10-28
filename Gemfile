source 'https://rubygems.org'

ruby "2.0.0"

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.0.0'

# Use sqlite3 as the database for Active Record
gem 'pg'
gem "geocoder"
#gem 'haml'

# Use SCSS for stylesheets
#gem 'sass-rails', '~> 4.0.0'
gem 'less-rails'

# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'

# Use CoffeeScript for .js.coffee assets and views
gem 'coffee-rails', '~> 4.0.0'

# See https://github.com/sstephenson/execjs#readme for more supported runtimes
gem 'therubyracer', platforms: :ruby

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

gem 'devise', '3.0.0.rc'
gem "will_paginate", git: 'https://github.com/mislav/will_paginate.git'
gem 'simple_form'
gem "paperclip"
gem 'aws-sdk'
gem 'newrelic_rpm'
gem 'friendly_id'
gem 'bullet'


group :development, :test do
  gem "better_errors"
  gem "binding_of_caller"
  gem 'rspec-rails', '~> 2.13.1'
  gem 'factory_girl_rails'
  gem "capybara"
  gem "guard"
  gem "guard-livereload"
  gem "rack-livereload"
  gem "guard-rspec"
  gem "database_cleaner", :group => :test
  gem 'quiet_assets'
  gem 'simplecov', :require => false, :group => :test
end

gem 'carmen-rails', '~> 1.0.0', github: 'jim/carmen-rails'

gem 'rails_12factor', group: :production

# Use ActiveModel has_secure_password
# gem 'bcrypt-ruby', '~> 3.0.0'

# Use unicorn as the app server
gem 'unicorn', group: :production

#Pray that Sucker Punch helps save us some money
gem 'sucker_punch', '~> 1.0'

# Use Capistrano for deployment
# gem 'capistrano', group: :development

# Use debugger
# gem 'debugger', group: [:development, :test]
