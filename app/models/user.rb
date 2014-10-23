class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :blogPosts, inverse_of: :user, dependent: :destroy, autosave: true
  has_many :comments, inverse_of: :user, dependent: :destroy, autosave: true
end
