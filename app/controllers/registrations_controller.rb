class RegistrationsController < Devise::RegistrationsController

  protected

    def after_update_path_for(resource)
      cpanel_front_index_path
    end
end