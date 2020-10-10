class AddReferenceToOrders < ActiveRecord::Migration[6.0]
  def change
    add_reference :orders, :consultation, null: false, foreign_key: true
  end
end
