# Load the rails application
require File.expand_path('../application', __FILE__)

# Initialize the rails application
Validator::Application.initialize!

require 'validators/date_order_validator'