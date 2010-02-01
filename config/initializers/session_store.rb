# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_UploadService_session',
  :secret      => '6b60713d6827727555d7a8bfc974a145c255ecc5607500875ff04f992ce690ef2f754f9c1d1ba811c26d15e4baf3fdfc0e9e061efe05dfc34d83012c3928b737'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
