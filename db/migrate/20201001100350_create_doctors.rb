class CreateDoctors < ActiveRecord::Migration[6.0]
  def change
  create_table "doctors", force: :cascade do |t|
    t.integer "medical_licence_number", null: false
    t.string "country_of_doctor_licence", null: false
    t.string "clinic_of_practice", null: false
    t.string "address_of_clinic", null: false
    t.string "profile_status", default: "unapproved", null: false
    t.bigint "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_doctors_on_user_id"
  end
  end
end
