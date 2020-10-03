class ApplicationController < ActionController::Base
  before_action :authenticate_user!

  include Pundit
  after_action :verify_authorized, except: :index, unless: :skip_pundit?
  after_action :verify_policy_scoped, only: :index, unless: :skip_pundit?

  before_action :configure_permitted_parameters, if: :devise_controller?

  def configure_permitted_parameters
    # For additional fields in app/views/devise/registrations/new.html.erb
    devise_parameter_sanitizer.permit(:sign_up, keys: [:first_name, :last_name, :date_of_birth, :nationality, :contact_number,:user_type])

    # For additional in app/views/devise/registrations/edit.html.erb
    devise_parameter_sanitizer.permit(:account_update, keys: [:first_name, :last_name, :date_of_birth, :nationality, :contact_number])
   end

private

  def skip_pundit?
    devise_controller? || params[:controller] =~ /(^(rails_)?admin)|(^pages$)/
  end

protected

  def after_sign_in_path_for(resource)
    if current_user.user_type == 'doctor'
     redirect_to new_doctor_path
    elsif current_user.user_type == 'patient'
      redirect_to new_patient_path
    end
  end
end
