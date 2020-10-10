# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_10_10_034706) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "consultations", force: :cascade do |t|
    t.bigint "doctor_id", null: false
    t.bigint "patient_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["doctor_id"], name: "index_consultations_on_doctor_id"
    t.index ["patient_id"], name: "index_consultations_on_patient_id"
  end

  create_table "doctors", force: :cascade do |t|
    t.integer "medical_licence_number", null: false
    t.string "country_of_doctor_licence", null: false
    t.string "clinic_of_practice", null: false
    t.string "address_of_clinic_string", null: false
    t.string "profile_status", default: "unapproved", null: false
    t.bigint "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_doctors_on_user_id"
  end

  create_table "medicines", force: :cascade do |t|
    t.string "name", null: false
    t.string "strength_of_medicine", null: false
    t.string "available_status", null: false
    t.decimal "price", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "order_items", force: :cascade do |t|
    t.bigint "order_id", null: false
    t.bigint "prescription_id", null: false
    t.index ["order_id"], name: "index_order_items_on_order_id"
    t.index ["prescription_id"], name: "index_order_items_on_prescription_id"
  end

  create_table "orders", force: :cascade do |t|
    t.decimal "total_cost", null: false
    t.string "delivery_status", default: "pending", null: false
    t.datetime "date_of_dispatch"
    t.datetime "date_of_delivery"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "patients", force: :cascade do |t|
    t.string "home_address", null: false
    t.string "allergies", default: "none", null: false
    t.bigint "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_patients_on_user_id"
  end

  create_table "prescriptions", force: :cascade do |t|
    t.bigint "medicine_id", null: false
    t.text "amount_per_serving", null: false
    t.decimal "servings_per_day", null: false
    t.decimal "number_of_days", null: false
    t.string "comment", null: false
    t.bigint "consultation_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["consultation_id"], name: "index_prescriptions_on_consultation_id"
    t.index ["medicine_id"], name: "index_prescriptions_on_medicine_id"
  end

  create_table "tasks", force: :cascade do |t|
    t.string "title"
    t.string "description"
    t.datetime "start_date"
    t.datetime "end_date"
    t.bigint "user_id", null: false
    t.bigint "prescription_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "repeat_days"
    t.index ["prescription_id"], name: "index_tasks_on_prescription_id"
    t.index ["user_id"], name: "index_tasks_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "first_name", null: false
    t.string "last_name", null: false
    t.datetime "date_of_birth", null: false
    t.string "nationality", null: false
    t.string "contact_number", null: false
    t.string "user_type", null: false
    t.string "access_token"
    t.datetime "expires_at"
    t.string "refresh_token"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "consultations", "doctors"
  add_foreign_key "consultations", "patients"
  add_foreign_key "order_items", "orders"
  add_foreign_key "order_items", "prescriptions"
  add_foreign_key "tasks", "prescriptions"
  add_foreign_key "tasks", "users"
end
