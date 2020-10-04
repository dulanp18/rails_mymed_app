class CreateMedicines < ActiveRecord::Migration[6.0]
  def change
    create_table :medicines do |t|
      t.string :name, null: false
      t.string :strength_of_medicine, null: false
      t.string :available_status, null: false
      t.decimal :price, null: false

      t.timestamps
    end
  end
end
