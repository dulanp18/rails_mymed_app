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
    # raise
    @consultation = Consultation.find(params[:consultation_id])
    @medicine = Medicine.find(params[:medicine])
    # raise
    @prescription.medicine = @medicine
    @prescription.consultation = @consultation
    if @prescription.amount_per_serving
    price = @medicine.price_cents * (@prescription.amount_per_serving * @prescription.number_of_days * @prescription.servings_per_day)
    end
    @prescription.price_cents = price
    authorize @prescription
    if @prescription.save
      redirect_to consultation_path(@consultation)
    else
      redirect_to consultation_path(@consultation)
      flash[:notice] = 'Please complete all field.'
    end



  end

  def show
    @prescription = Prescription.find(params[:id])
    medicine = Medicine.find(@prescription.medicine_id)
    @prescription.medicine = medicine
    authorize @prescription
  end




  private

  def prescription_params
      params.require(:prescription).permit(:amount_per_serving, :servings_per_day, :number_of_days, :comment, :price_cents)
  end


end
