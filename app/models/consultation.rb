class Consultation < ApplicationRecord
  belongs_to :doctor
  belongs_to :patient
  has_many :prescriptions
end
