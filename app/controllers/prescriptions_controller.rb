class PrescriptionsController < ApplicationController

  def index
    all_prescriptions = policy_scope(Prescription)
    @user = current_user
    if @user.user_type == 'patient'
      @consultations = @user.patient.consultations
    elsif @user.user_type == 'doctor'
      @consultations = @user.doctor.consultations
    end
    @prescriptions = []
    @consultations.each do |consultation|
      consultation.prescriptions.each do |prescription|
        @prescriptions << prescription
      end
    end

  end

  def create
    @prescription = Prescription.new(prescription_params)
    @consultation = Consultation.find(params[:consultation_id])
    @medicine = Medicine.where(name: params[:other][:name], strength_of_medicine: params[:other][:strength_of_medicine])[0]
    @prescription.medicine = @medicine
    @prescription.consultation = @consultation
    authorize @prescription
    @prescription.save

    redirect_to consultation_path(@consultation)
  end

  def show
    @prescription = Prescription.find(params[:id])
    medicine = Medicine.find(params[:medicine_id])
    @prescription.medicine = medicine
    authorize @prescription
  end




  private

  def prescription_params
      params.require(:prescription).permit(:amount_per_serving, :servings_per_day, :number_of_days,:comment)
  end


end
