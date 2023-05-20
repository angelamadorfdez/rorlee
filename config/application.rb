require_relative "boot"

require "rails/all"

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Rorlee
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 7.0

    # Configuration for the application, engines, and railties goes here.
    #
    # These settings can be overridden in specific environments using the files
    # in config/environments, which are processed later.
    #
    # config.time_zone = "Central Time (US & Canada)"
    # config.eager_load_paths << Rails.root.join("extras")

    # Redirects all requests to subdomain to root domain via middleware (using rack-rewrite gem)
    config.middleware.insert_before 0, Rack::Rewrite do
      r301 %r{.*}, proc { |path, rack_env| "https://rorlee.com#{path}" }, :if => Proc.new { |rack_env|
        rack_env['SERVER_NAME'] != 'rorlee.com'
      }
    end
    
  end
end
