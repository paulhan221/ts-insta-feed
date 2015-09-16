require "instagram"

CALLBACK_URL = "http://timessquare-insta-feed.herokuapp.com/oauth/callback"
# CALLBACK_URL = "http://localhost:3000/oauth/callback"

Instagram.configure do |config|
  config.client_id = ENV['CLIENT_ID']
  config.client_secret = ENV['CLIENT_SECRET']
  # For secured endpoints only
  #config.client_ips = '<Comma separated list of IPs>'
end