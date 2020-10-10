class OrderItemsController < ApplicationController
  def index
   all_items = policy_scope(OrderItem)
   @user = current_user
     if @user == 'patient'

     end
  end

  def create
    @order_item = OrderItem.new(order_item_params)
    @prescription = Prescription.find(order_item_params[:prescription_id])
    @order_item.prescription = @prescription
    authorize @order_item
    @order_item.save
    raise
  end

  private

  def order_item_params
    params.require(:order_item).permit(:prescription_id)
  end
end
