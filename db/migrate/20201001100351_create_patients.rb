class CreatePatients < ActiveRecord::Migration[6.0]
  def change
  create_table "patients", force: :cascade do |t|
    t.string "home_address", null: false
    t.string "allergies", default: "none", null: false
    t.bigint "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_patients_on_user_id"
  end
  end
end
