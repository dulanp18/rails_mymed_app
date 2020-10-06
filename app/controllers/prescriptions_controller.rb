class PrescriptionsController < ApplicationController

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
