require_relative "boot"

require "rails"
require "action_controller/railtie"
require "action_view/railtie"
require "rails/test_unit/railtie"

Bundler.require(*Rails.groups)
require "heroicons-rails"

module Dummy
  class Application < Rails::Application
    config.load_defaults Rails::VERSION::STRING.to_f

    # Don't generate system test files.
    config.generators.system_tests = nil
  end
end
