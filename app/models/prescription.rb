class Prescription < ApplicationRecord
  belongs_to :medicine
  belongs_to :consultation
  has_many :task
  monetize :price_cents
end
