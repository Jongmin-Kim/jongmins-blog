class User < ActiveRecord::Base
  before_save { self.email = email.downcase }

  validates :name, presence: true, length: { minimum: 3, maximum: 16 }
  validates :email, presence: true, uniqueness: true, uniqueness: { case_sensitive: false }
  # email format validation
  validates :password, length: { minimum: 5 }
  has_secure_password
end