class PatientsController < ApplicationController


  def index
  @patients = if params[:query].present?
                  Patient.search_by_email(params[:query])
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


  private

  def patient_params
      params.require(:patient).permit(:home_address, :allergies)
  end

end
