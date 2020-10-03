class Patient < ApplicationRecord
  belongs_to :user
  has_many :consultations
  has_many :prescriptions, through: consultations:
  has_many :orders, through: :consultations



end



