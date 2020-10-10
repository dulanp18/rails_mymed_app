class TotalCostCentsToPrescriptions < ActiveRecord::Migration[6.0]
  def change
    add_monetize :prescriptions, :price, currency: { present: false }
  end
end
