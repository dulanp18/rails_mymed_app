class DoctorsController < ApplicationController

def new
  @doctor = Doctor.new
end

def create
  @doctor = Doctor.new(doctor_params)
  @user = current_user
  @doctor.user = @user
  if @doctor.save
    redirect_to doctor_path
    raise
  else
    render :new
  end
end

def show
  @doctor = Doctor.find(params[:id])
end


  private

   def doctor_params
      params.require(:doctor).permit(:medical_licence_number, :country_of_doctor_licence, :clinic_of_practice, :address_of_clinic_string)
  end


end
