class Order < ApplicationRecord
  belongs_to :consultation
  monetize :total_cost_cents
end
