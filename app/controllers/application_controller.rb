class ApplicationController < ActionController::Base

  protect_from_forgery with: :exception
  before_action :configure_permitted_parameters, if: :devise_controller?

 def index
      render “app/views/layouts/application.html.erb”
  end

 def after_sign_in_path_for(resource_or_scope)
    current_user
  end

 def after_sign_up_path_for(resource_or_scope)
    current_user
  end

 def after_sign_out_path_for(resource_or_scope)
   new_user_registration_path
  end

  protected

  def configure_permitted_parameters
    # to allow custom fields to save on devise database
    added_attrs = [:username, :email, :password, :password_confirmation, :remember_me, :first_name, :last_name, :location]
    devise_parameter_sanitizer.permit :sign_up, keys: added_attrs
    devise_parameter_sanitizer.permit :sign_in, keys: added_attrs
    devise_parameter_sanitizer.permit :account_update, keys: added_attrs
  end
end
