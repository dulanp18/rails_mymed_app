class PaymentsController < ApplicationController
  def new
    @order = Order.where(state: 'pending').find(params[:order_id])
  end
end
