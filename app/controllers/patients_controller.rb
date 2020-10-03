class PatientsController < ApplicationController



  def new
    @patient = Patient.new
    authorize @patient
  end

  def create
    @patient = Patient.new(patient_params)
    @user = current_user
    @patient.user = @user
    authorize @patient
    if @patient.save
      redirect_to consultations_path
    else
       render :new
    end
  end


  private

  def patient_params
      params.require(:patient).permit(:home_address, :allergies)
  end

end
