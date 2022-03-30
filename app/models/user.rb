class User < ApplicationRecord
 
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :email, presence: true
  validates :email, format: { with: URI::MailTo::EMAIL_REGEXP }
  validates :city, presence: true
  validates :state, presence: true
  validates :score, presence: true

end
