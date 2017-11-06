require "expose/railtie" if defined?(Rails)
require "expose/version"

module Expose
  module ClassMethods
    # Helper method to encapsulate the pattern of exposing attributes
    # through the controller as helper methods. These attributes are
    # hidden to prevent accidential invocation as controller actions.
    #
    # Example:
    #   class MyController < ApplicationController
    #     expose :my, :attributes
    #
    #     private
    #
    #     def my
    #       @my ||= expensive_calulation
    #     end
    #
    #     def attributes
    #       @attributes ||= expensive_calulation
    #     end
    #   end
    def expose *attributes
      attr_writer *attributes
      helper_method *attributes
    end
  end
end
