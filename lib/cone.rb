module Cone
  module Rails
    class Railtie < ::Rails::Railtie
      config.before_initialize do
        # clear the assets cache otherwise routes don't get reloaded on server restart
        assets_cache = ::Rails.application.config.instance_eval { @assets }[:cache_store][1]
        ActiveSupport::Cache::FileStore.new(assets_cache).clear if File.directory?(assets_cache)
      end
    end
  end
  class Engine < ::Rails::Engine

  end
end
