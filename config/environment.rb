# Load the Rails application.
require File.expand_path('../application', __FILE__)

# Initialize the Rails application.
Rails.application.initialize!

if Rails.env.production?
  Rails.logger = Le.new('84e550c2-0099-438c-a18a-05832a842ab3', :debug => true, :local => true)
end
