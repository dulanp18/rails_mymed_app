class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_one :doctor
  has_one :patient

  accepts_nested_attributes_for :patient
  accepts_nested_attributes_for :doctor

  after_initialize do
    build_doctor if new_record? && self.user_type == 'doctor'
  end

end
