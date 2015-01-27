class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_filter :set_index_bar  
  layout :layout_by_resource

  protected
    def set_index_bar
      if controller_name == 'front' && action_name == 'index'
        @home_index_bar = true
      end
    end

    def layout_by_resource
      if devise_controller?
        "appsignin"
      else
        "application"
      end
    end
end
