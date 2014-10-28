class Comment < ActiveRecord::Base
  belongs_to :blogPost
  belongs_to :user, inverse_of: :comments

  validates :body, :user, :blogPost, presence: true
end
