class DoctorsController < ApplicationController

def new
  @doctor = Doctor.new
  authorize @doctor
end

def create
  @doctor = Doctor.new(doctor_params)
  @user = current_user
  @doctor.user = @user
  authorize @doctor
  if @doctor.save
    redirect_to doctor_path(@doctor)
  else
    render :new
  end
end

def show
  @doctor = Doctor.find(params[:id])
  authorize @doctor
  @consultations = @doctor.consultations
  @prescriptions = @doctor.prescriptions
  @age = Date.today.year - @doctor.user.date_of_birth.year
end


  private

   def doctor_params
      params.require(:doctor).permit(:medical_licence_number, :country_of_doctor_licence, :clinic_of_practice, :address_of_clinic_string)
  end


end
