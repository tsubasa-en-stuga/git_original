require File.expand_path('../boot', __FILE__)

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Original
  class Application < Rails::Application
    config.generators do |g|
      g.helper false
      g.assets false
      g.test_framework false
 
    end
    config.active_record.raise_in_transactional_callbacks = true
  end
end
