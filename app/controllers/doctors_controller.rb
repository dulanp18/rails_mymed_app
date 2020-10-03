class DoctorsController < ApplicationController

def new
  @doctor = Doctor.new
end

def create
  @doctor = Doctor.new(doctor_params)
  @user = current_user
  @doctor.user = @user
  if doctor.save
    raise
    redirect_to doctor_path
  else
    render :new
end

def show
  @doctor = Doctor.find(params[:id])
end


  private

   def doctor_params
      params.require(:doctor).permit(:medical_licence_number, :country_of_doctor_licence, :clinic_of_practice, :address_of_clinic_string, :profile_status, :user_id, :user_attributes => [:first_name, :last_name, :email, :date_of_birth, :nationality ])
  end


end
