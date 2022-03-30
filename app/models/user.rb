class User < ApplicationRecord
 
  validates :first_name, presence: { message: "*First name is required." }
  validates :last_name, presence: { message: "*Last name is required." }
  validates :email, presence: { message: "*Email is required." }, uniqueness: true
  validates :email, format: { with: URI::MailTo::EMAIL_REGEXP }
  validates :city, presence: { message: "*City is required." }
  validates :state, presence: { message: "*State is required." }
  validates :score, numericality: { only_integer: true }

end
