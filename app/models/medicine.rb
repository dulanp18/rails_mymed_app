class Medicine < ApplicationRecord
  has_many :prescriptions
  monetize :price_cents
end
