class DoctorsController < ApplicationController

  def resource_name
    :user
  end

  def resource
    @resource ||= User.new
  end

  def devise_mapping
    @devise_mapping ||= Devise.mappings[:user]
  end

  def resource_class
    User
  end

  def build_resource(hash=nil)
    self.resource = resource_class.new_with_session(hash || {}, session)
  end

  private

  def doctor_params
      params.require(:doctor).permit(:current_city_id, :current_country_id, :google_plus_page_url, :linkedin_page_url, :facebook_page_url, :skype_id, :user_attributes => [:first_name, :last_name])
  end


end
