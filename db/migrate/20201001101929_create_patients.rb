class CreatePatients < ActiveRecord::Migration[6.0]
  def change
    create_table :patients do |t|
      t.string :home_address, null: false
      t.string :allergies, null: false, default: "none"
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
