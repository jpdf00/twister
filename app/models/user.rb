class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :username, presence: true, uniqueness: true

  has_many :is_followings, class_name: "Network", foreign_key: "is_following_id"
  has_many :being_followeds, class_name: "Network", foreign_key: "being_followed_id"
  has_many :followers, through: :being_followeds, source: :is_following
  has_many :followings, through: :is_followings, source: :being_followed
  has_many :posts
end
