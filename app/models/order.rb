class Order < ApplicationRecord
  belongs_to :consultation
  has_many :prescriptions
end
