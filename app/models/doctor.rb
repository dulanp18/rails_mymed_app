class Doctor < ApplicationRecord
  belongs_to :user
  has_many :consultations
  has_many :prescriptions, through: :consultations

  accepts_nested_attributes_for :user

  def new
  end

  def create
  end

  def show
  end

  def edit
  end



end
