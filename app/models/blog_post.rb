class BlogPost < ActiveRecord::Base
  belongs_to :user, inverse_of: :blogPosts

  validates :title, :body, :user, presence: true
end
