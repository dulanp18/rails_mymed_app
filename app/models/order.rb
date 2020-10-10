class Order < ApplicationRecord
  belongs_to :consultation
  belongs_to :user
  has_many :order_items
  has_many :prescriptions, through: :order_items
  monetize :total_cost_cents
end
