class DoctorsController < ApplicationController






  private

   def doctor_params
      params.require(:doctor).permit(:medical_licence_number, :country_of_doctor_licence, :clinic_of_practice, :address_of_clinic_string, :profile_status, :user_id, :user_attributes => [:first_name, :last_name, :email, :date_of_birth, :nationality ])
  end


end
