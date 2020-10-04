class PatientsController < ApplicationController


  def index
    all_patients = policy_scope(Patient)
  if params[:query].present?
     @patient = User.where(email: params[:query].downcase, user_type: 'patient')
  end
  end


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
