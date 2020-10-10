class AddPriceToMedicines < ActiveRecord::Migration[6.0]
  def change
    add_monetize :medicines, :price, currency: { present: false }
  end
end
