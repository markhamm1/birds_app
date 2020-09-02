Unsplash.configure do |config|
  config.application_access_key = "#{Rails.application.credentials.unsplash_api[:access_key]}"
  config.application_secret = "#{Rails.application.credentials.unsplash_api[:secret_key]}"
  config.utm_source = "birds_app"
end