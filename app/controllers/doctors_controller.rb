class DoctorsController < ApplicationController






  private

   def doctor_params
      params.require(:doctor).permit(:current_city_id, :current_country_id, :google_plus_page_url, :linkedin_page_url, :facebook_page_url, :skype_id, :user_attributes => [:first_name, :last_name])
  end


end
