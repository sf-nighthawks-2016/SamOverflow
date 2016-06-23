class Comment < ActiveRecord::Base
  # Remember to create a migration!
  validates :user_id, presence: true
  validates :content, presence: true
  validates :commentable_id, presence: true
  validates :commentable_type, presence: true

  belongs_to :commentable, polymorphic: true
  belongs_to :user
end
