source 'https://rubygems.org'
ruby '2.2.2'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.2.1'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'
gem 'bootstrap-sass'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.1.0'
# See https://github.com/rails/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby

# Use jquery as the JavaScript library
gem 'jquery-rails'
gem 'jquery-ui-rails'
gem 'chart-js-rails'
gem 'videojs_rails', '~> 4.6.1'

#font/style
gem 'font-awesome-rails'

# For file upload
gem "paperclip", "~> 4.0"
gem 'paperclip-av-transcoder'

# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'
#gem 'jquery-turbolinks' # might need this for other jquery libraries not including until needed
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.2.16'
# bundle exec rake doc:rails generates the API under doc/api.
gem 'sdoc', '~> 0.4.0', group: :doc
# Form generation
gem 'simple_form', '~> 3.1'
gem 'carmen'

# Location information
# gem 'gmaps4rails'
gem 'geocoder'

# Payment Processing
gem "braintree-rails"

# Email theme and auto inline css
gem 'roadie', '~> 3.0.4'
gem 'roadie-rails'

#for SMS notifications
#gem 'twilio-ruby'
#gem 'phonelib'
#gem 'phone'

# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use Unicorn as the app server
# gem 'unicorn'

# Use puma as the app server
gem 'puma'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

# User management
gem "devise", '~> 3.5.1'
gem "omniauth-google-oauth2"
gem 'omniauth-facebook'
gem 'omniauth-twitter'
gem 'cancancan', '~> 1.10'

# Api stuff
gem 'httparty', '~> 0.13.5'

#logging
gem 'le'

group :production do
  #database
  gem 'pg', '~> 0.18.2'
  
  #heroku required gems
  gem 'rails_12factor'  
  
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

