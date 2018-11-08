class Crypto < ApplicationRecord
  validates :name, presence: true
  validates :firstname, presence: true
  validates :email, :presence => true, :uniqueness => true
  validates :email,  :uniqueness => true
  before_save { self.email = email.downcase }
  validates :name, presence: true, length: { maximum: 50 }
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, length: { maximum: 255 },
                  format: { with: VALID_EMAIL_REGEX },
                  uniqueness: { case_sensitive: false }
  has_secure_password
end