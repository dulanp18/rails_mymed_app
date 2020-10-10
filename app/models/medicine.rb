class Medicine < ApplicationRecord
  has_many :prescriptions
  monetize :price_cents

  def titlecase_name
    name.titlecase
  end
end
