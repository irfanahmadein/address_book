# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_address_book_session',
  :secret      => '97c3d3f1fbfc65dc79844903612c58ae0bdb5a39bb5515e08d4baba09dfb9142dccab328e3300246c84eff3f8f988c9ac74ca5bb2985c8750b96e253276661cc'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
