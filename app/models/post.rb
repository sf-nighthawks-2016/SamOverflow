class Post < ActiveRecord::Base
  validates :user_id, presence: true
  validates :title, presence: true
  validates :content, presence: true


  has_many :comments, as: :commentable
  has_many :votes, as: :voteable
  has_many :answers
  belongs_to :user
end
