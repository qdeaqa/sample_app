require 'securerandom'
# Be sure to restart your server when you modify this file.

# Your secret key is used for verifying the integrity of signed cookies.
# If you change this key, all old signed cookies will become invalid!

# Make sure the secret is at least 30 characters and all random,
# no regular words or you'll be exposed to dictionary attacks.
# You can use `rake secret` to generate a secure secret key.

# Make sure your secret_key_base is kept private
# if you're sharing your code publicly.
def secure_token
	token_file= Rails.root.join(''.secret)
	if File.exist?(token_file)
		File.read(token_file).chomp
	else
		token=SecureRandom.hex(64)
		File.write(token_file,token)
		token
	end
end
SampleApp::Application.config.secret_key_base = '93986d45beff76cb60f9611ed553dd2914463cca5cc5cd5aef29b61d083d58152a2131da8cd66952b225d8f91d5818ce79d7b823cb615884b582059011f6448b'
