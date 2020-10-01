class Prescription < ApplicationRecord
  belongs_to :medicine
  belongs_to :consultation
  belongs_to :transaction
end
