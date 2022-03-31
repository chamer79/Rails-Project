class User < ApplicationRecord

  attr_reader :full_name  
 
  validates :first_name, presence: { message: "*First name is required." }
  validates :last_name, presence: { message: "*Last name is required." }
  validates :email, presence: { message: "*Email is required." }, uniqueness: true
  validates :email, format: { with: URI::MailTo::EMAIL_REGEXP }
  validates :city, presence: { message: "*City is required." }
  validates :state, presence: { message: "*State is required." }
  validates :score, numericality: { message: "%{value} seems wrong. Please only input numberes." }

  def full_name
    "#{first_name} #{last_name}"

    # p full_name
  end

end
