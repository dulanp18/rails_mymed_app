class PrescriptionsController < ApplicationController

  def create
    @prescription = Prescription.new(prescription_params)
    @consultation = Consultation.find(params[:consultation_id])
    @medicine = Medicine.where(name: params[:other][:name], strength_of_medicine: params[:other][:strength_of_medicine])[0]
    @prescription.medicine = @medicine
    @prescription.consultation = @consultation
    @prescription.save(validate: false)

    redirect_to consultation_path(@consultation)
  end


  private

  def prescription_params
      params.require(:prescription).permit(:doses_per_day, :dose_per_serving, :number_of_days,:comment)
  end


end
