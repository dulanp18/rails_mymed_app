class PaymentsController < ApplicationController
  def new
    @order = Order.where(state: 'pending').find(params[:order_id])
    @prescriptions = []
      params[:order][:prescriptions][1..-1].each do |prescription_id|
        @prescriptions << Prescription.find(prescription_id)
      end
  end
end
