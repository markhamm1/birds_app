require_relative 'boot'

require "rails"
# Pick the frameworks you want:
require "active_model/railtie"
require "active_job/railtie"
require "active_record/railtie"
require "active_storage/engine"
require "action_controller/railtie"
require "action_mailer/railtie"
require "action_mailbox/engine"
require "action_text/engine"
require "action_view/railtie"
require "action_cable/engine"
require "sprockets/railtie"
# require "rails/test_unit/railtie"

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

# Unsplash.configure do |config|
#   config.application_access_key = "_pBIAfuQbEEw_QWMRaDr-CuGA8u5dWF9iRhLHEQhG7Y"
#   config.application_secret = "Omioe8KKOq8Wh0rzX1in_UpnL7jgaTNtkrc_vF-bIjI"
#   config.application_redirect_uri = "https://your-application.com/oauth/callback"
#   config.utm_source = "alices_terrific_client_app"

#   # optional:
#   config.logger = MyCustomLogger.new
# end

module BirdsApp
  class Application < Rails::Application
    config.generators.assets = false
    config.generators.helper = false
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 6.0

    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration can go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded after loading
    # the framework and any gems in your application.

    # Don't generate system test files.
    config.generators.system_tests = nil
  end
end
