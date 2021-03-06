class OrdersController < ApplicationController

  def show
    @order = Order.find(params[:id])
  end

  def create
  price = 0
    params[:order][:prescriptions][1..-1].each do |prescription_id|
      price += Prescription.find(prescription_id).price_cents
    end
  order  = Order.create!(total_cost_cents: price, state: 'pending', user: current_user, consultation_id: params[:order][:consultation_id])

  session = Stripe::Checkout::Session.create(
    payment_method_types: ['card'],
    line_items: [{
      name: "consultation - #{order.consultation.id}",
      amount: order.total_cost_cents,
      currency: 'aud',
      quantity: 1
    }],
    success_url: order_url(order),
    cancel_url: order_url(order)
  )

  order.update(checkout_session_id: session.id)
  redirect_to new_order_payment_path(order, params.to_unsafe_h)
  end
end
