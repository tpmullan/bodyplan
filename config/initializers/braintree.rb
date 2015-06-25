BraintreeRails::Configuration.logger = Logger.new('log/braintree.log')
BraintreeRails::Configuration.environment = ENV["BRAINTREE_ENV"].try(:to_sym)
BraintreeRails::Configuration.merchant_id = ENV["BRAINTREE_MERCHANT_ID"]
BraintreeRails::Configuration.public_key = ENV["BRAINTREE_PUBLIC_KEY"]
BraintreeRails::Configuration.private_key = ENV["BRAINTREE_PRIVATE_KEY"]
BraintreeRails::Configuration.client_side_encryption_key = ENV['BRAINTREE_CLIENT_SIDE_ENCRYPTION_KEY']
