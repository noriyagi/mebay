# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_mebay_session',
  :secret      => 'efbf1488b0e5e805547903add9a99a242a6e3817c015bb4ecd259a54fb18624a60c9463ec2a62710f8fe009592dc65f2065a80f61d813f2dae58847c585b161c'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
