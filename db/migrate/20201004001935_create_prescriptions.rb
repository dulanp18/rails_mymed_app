class CreatePrescriptions < ActiveRecord::Migration[6.0]
  def change
    create_table :prescriptions do |t|
      t.bigint "medicine_id", null: false
      t.integer "amount_per_serving", null: false
      t.decimal "servings_per_day", null: false
      t.decimal "number_of_days", null: false
      t.string "comment", null: false
      t.bigint "consultation_id", null: false
      t.datetime "created_at", precision: 6, null: false
      t.datetime "updated_at", precision: 6, null: false
      t.index ["consultation_id"], name: "index_prescriptions_on_consultation_id"
      t.index ["medicine_id"], name: "index_prescriptions_on_medicine_id"
    end
  end
end
