class Doctor < ApplicationRecord
  belongs_to :user
  has_many :consultations
  has_many :prescriptions, through: :consultations
end
