class Prescription < ApplicationRecord
  belongs_to :medicine
  belongs_to :consultation
end
