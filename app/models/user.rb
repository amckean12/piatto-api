class User < ApplicationRecord
  #in order for knock to work
  has_secure_password

  #Validations
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :email, uniqueness: true, presence: true
  validates :password_digest, presence: true, length: { minimum: 7 }
end
