class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable


  has_one :doctor
  has_one :patient
  has_many :tasks


  def downcase_email
    email.downcase
  end

  def titlecase_first_name
    first_name.titlecase
  end

  def titlecase_last_name
    last_name.titlecase
  end

  def from_auth_hash(auth)
      self.access_token = auth.credentials.token
      self.expires_at = auth.credentials.expires_at
      self.refresh_token = auth.credentials.refresh_token
      self.save
  end

end
