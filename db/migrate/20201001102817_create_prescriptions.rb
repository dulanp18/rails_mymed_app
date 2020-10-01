class CreatePrescriptions < ActiveRecord::Migration[6.0]
  def change
    create_table :prescriptions do |t|
      t.references :medicine, null: false, foreign_key: true
      t.text :dose_per_serving, null: false
      t.decimal :doses_per_day, null: false
      t.decimal :number_of_days, null: false
      t.string :comment, null: false
      t.references :consultation, null: false, foreign_key: true
      t.references :order, null: false, foreign_key: true

      t.timestamps
    end
  end
end
