# Be sure to restart your server when you modify this file.

# Your secret key is used for verifying the integrity of signed cookies.
# If you change this key, all old signed cookies will become invalid!

# Make sure the secret is at least 30 characters and all random,
# no regular words or you'll be exposed to dictionary attacks.
# You can use `rake secret` to generate a secure secret key.

# Make sure your secret_key_base is kept private
# if you're sharing your code publicly.
EC2Demo::Application.config.secret_key_base = '1cd56edaa38c21c6e5950cd76336fe66848cd81fd65bb59ed481b3a0c4954947f1af121b96e91b3959512138175ab5729e1cec7808f24716687818a5384051b8'
