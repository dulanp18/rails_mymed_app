class OrderItem < ApplicationRecord
  belongs_to :prescription
  belongs_to :order
end
