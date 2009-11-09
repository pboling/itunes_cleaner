# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_itunes_cleaner_session',
  :secret      => 'f353d7a76ee5fb54050a0554f83386db67a97a8e0e2fdd125a76b851aa3c8632392e0bf5e27c6c0f383a693992492abae4c28c9662aa8f272387869df17cc8c3'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
