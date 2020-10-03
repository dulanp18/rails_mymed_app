class ApplicationController < ActionController::Base
  before_action :authenticate_user!, except: :new

  include Pundit
  #after_action :verify_authorized, except: :index, unless: :skip_pundit?
  #after_action :verify_policy_scoped, only: :index, unless: :skip_pundit?

  before_action :configure_permitted_parameters, if: :allow_params?

  def configure_permitted_parameters
    # For additional fields in app/views/devise/registrations/new.html.erb
    devise_parameter_sanitizer.permit(:sign_up, keys: [:first_name, :last_name, :date_of_birth, :nationality, :contact_number,:user_type , doctor_attributes: [:medical_licence_number, :country_of_doctor_licence, :clinic_of_practice, :address_of_clinic_string,:country_of_doctor_licence]])

    # For additional in app/views/devise/registrations/edit.html.erb
    devise_parameter_sanitizer.permit(:account_update, keys: [:first_name, :last_name, :date_of_birth, :nationality, :contact_number])
   end

private

  def skip_pundit?
    devise_controller? || params[:controller] =~ /(^(rails_)?admin)|(^pages$)/
  end

  def allow_params?
    devise_controller? || params[:controller] =~ /doctors|patients/
  end
end
