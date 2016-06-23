class User < ActiveRecord::Base
  # Remember to create a migration!
  validates :username, presence: true, uniqueness: true
  validates :email, presence: true, uniqueness: true
  validates :password, presence: true

  has_many :posts
  has_many :comments
  has_many :answers
  has_many :votes


  has_secure_password
end
