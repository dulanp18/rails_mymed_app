class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_one :doctor
  has_one :patient

  def downcase_email
    email.downcase
  end

  def titlecase_first_name
    first_name.titlecase
  end

  def titlecase_last_name
    last_name.titlecase
  end
end
