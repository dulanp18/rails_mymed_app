class RemovePriceFromMedicines < ActiveRecord::Migration[6.0]
  def change
    remove_column :medicines, :price
  end
end
