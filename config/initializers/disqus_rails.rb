DisqusRails.setup do |config|
  config::SHORT_NAME = "paweblog"
  config::SECRET_KEY = "your_secret_disqus_key" #leave blank if not used
  config::PUBLIC_KEY = "your public_disqus_key" #leave blank if not used
  config::ACCESS_TOKEN = "your_access_token" #you got it, right? ;-)
end