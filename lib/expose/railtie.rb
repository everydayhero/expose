require 'rails'

module Expose
  class Railtie < Rails::Railtie
    initializer "expose.extend_action_controller" do
      ActiveSupport.on_load(:action_controller) do
        ActionController::Base.extend ClassMethods
      end
    end
  end
end
