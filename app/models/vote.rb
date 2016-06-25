class Vote < ActiveRecord::Base
  validates :user_id, presence: true
  validates :voteable_id, presence: true
  validates :voteable_type, presence: true

  belongs_to :voteable, polymorphic: true
  belongs_to :user
end
