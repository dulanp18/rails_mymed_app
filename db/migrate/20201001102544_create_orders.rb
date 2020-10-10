class CreateOrders < ActiveRecord::Migration[6.0]
  def change
    create_table :orders do |t|
      t.monetize :total_cost, currency: { present: false }
      t.string :delivery_status, null: false, default: "pending"
      t.string :checkout_session_id
      t.string :state
      t.datetime :date_of_dispatch
      t.datetime :date_of_delivery

      t.timestamps
    end
  end
end
