class CreateDoctors < ActiveRecord::Migration[6.0]
  def change
    create_table :doctors do |t|
      t.integer :medical_licence_number, null: false
      t.string :country_of_doctor_licence, null: false
      t.string :clinic_of_practice, null: false
      t.string :address_of_clinic_string, null: false
      t.string :profile_status, null: false, default: "unapproved"
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
