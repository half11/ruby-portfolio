require_relative 'boot'

require "rails"
# Pick the frameworks you want:
require "active_model/railtie"
require "active_job/railtie"
require "active_record/railtie"
require "active_storage/engine"
require "action_controller/railtie"
require "action_mailer/railtie"
require "action_view/railtie"
require "action_cable/engine"
require "sprockets/railtie"
# require "rails/test_unit/railtie"

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module GeneratorApp
  class Application < Rails::Application
    config.generators do |g|
      g.orm             :active_record #default connection to database sql
      g.template_engine :erb  #use slim or haml, in this case we use erb
      g.test_framework  :test_unit, fixture: false
      g.stylesheets     false   #cancel generation of stylesheets
      g.javascripts     true   #cancel generation of scripts
    end
  end
end
