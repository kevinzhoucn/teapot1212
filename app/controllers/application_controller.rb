class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_filter :set_index_bar  
  layout :layout_by_resource

  before_filter :configure_permitted_parameters, if: :devise_controller?

  def configure_permitted_parameters
    devise_parameter_sanitizer.for(:account_update) { |u| 
      u.permit(:password, :password_confirmation, :current_password) 
    }
  end

  # def after_sign_out_path_for(resource_or_scope)
  #   front_news_path
  # end

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
