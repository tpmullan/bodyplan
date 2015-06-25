source 'https://rubygems.org'
ruby '2.2.2'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.2.2'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'
gem 'bootstrap-sass', '3.3.5'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.1.0'
# See https://github.com/rails/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby

# Use jquery as the JavaScript library
gem 'jquery-rails', '4.0.4'
gem 'jquery-ui-rails', '5.0.5'
gem 'chart-js-rails', '0.0.9'
gem 'videojs_rails', '~> 4.6.1'
gem 'will_paginate', '~> 3.0.6'

#font/style
gem 'font-awesome-rails'

# For file upload
gem "paperclip", "4.3.0"
gem 'paperclip-av-transcoder', '0.6.4'

# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks', '2.5.3'
#gem 'jquery-turbolinks' # might need this for other jquery libraries not including until needed
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '2.3.0'
# bundle exec rake doc:rails generates the API under doc/api.
gem 'sdoc', '~> 0.4.0', group: :doc
# Form generation
gem 'simple_form', '~> 3.1'
gem 'carmen'

# Location information
# gem 'gmaps4rails'
gem 'geocoder', '1.2.9'

# Payment Processing
gem "braintree-rails"

# Email theme and auto inline css
gem 'roadie', '~> 3.0.4'
gem 'roadie-rails', '1.0.6'

#for SMS notifications
#gem 'twilio-ruby'
#gem 'phonelib'
#gem 'phone'

# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use Unicorn as the app server
# gem 'unicorn'

# Use puma as the app server
gem 'puma', '2.11.3'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

# User management
gem "devise", '~> 3.5.1'
gem "omniauth-google-oauth2", '0.2.6'
gem 'omniauth-facebook', '2.0.1'
gem 'omniauth-twitter', '1.2.0'
gem 'cancancan', '1.11.0'

# Api stuff
gem 'httparty', '~> 0.13.5'

#logging
gem 'le', '2.6.2'

group :production do
  #database
  gem 'pg', '~> 0.18.2'
  
  #heroku required gems
  gem 'rails_12factor', '0.0.3'
  
end

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', '~> 5.0.0'
  gem "better_errors"
  gem 'dotenv-rails'
  gem 'binding_of_caller'
  gem "pry"
  gem 'pry-rails'
  gem 'pry-stack_explorer'
    
  #testing 
  gem 'rspec-rails'
  gem 'factory_girl_rails'
  gem 'capybara'
  gem 'database_cleaner'
  gem 'faker'

  #database
  gem 'sqlite3'

  # Access an IRB console on exception pages or by using <%= console %> in views
  gem 'web-console', '~> 2.0'

  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
end

