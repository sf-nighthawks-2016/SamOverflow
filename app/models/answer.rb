class Answer < ActiveRecord::Base
  # Remember to create a migration!
  validates :user_id, presence: true
  validates :content, presence: true
  validates :post_id, presence: true

  has_many :votes, as: :voteable
  has_many :comments, as: :commentable
  belongs_to :user
end
