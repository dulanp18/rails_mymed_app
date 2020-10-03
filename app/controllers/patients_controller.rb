class PatientsController < ApplicationController



  def new
    @patient = Patient.new
  end

  def create
    @patient = Patient.new(patient_params)
    @user = current_user
    @patient.user = @user
    @patient.save

    raise
    redirect_to consultations_path
  end


  private

  def patient_params
      params.require(:patient).permit(:home_address, :allergies)
  end

end
