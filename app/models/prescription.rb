class Prescription < ApplicationRecord
  belongs_to :medicine
  belongs_to :consultation
  monetize :price_cents
end
