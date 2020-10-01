class CreateOrders < ActiveRecord::Migration[6.0]
  def change
    create_table :orders do |t|
      t.references :consultation, null: false, foreign_key: true
      t.decimal :total_cost, null: false
      t.string :delivery_status, null: false, default: "pending"
      t.datetime :date_of_dispatch
      t.datetime :date_of_delivery

      t.timestamps
    end
  end
end
