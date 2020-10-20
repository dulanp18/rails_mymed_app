class Prescription < ApplicationRecord
  belongs_to :medicine
  belongs_to :consultation
  has_many :task
  monetize :price_cents
  validates :amount_per_serving, numericality: { greater_than_or_equal_to: 1 }
  validates :servings_per_day, numericality: { greater_than_or_equal_to: 1 }
  validates :number_of_days, numericality: { greater_than_or_equal_to: 1 }
end
