class Post < ApplicationRecord
  belongs_to :user
  belongs_to :reply, class_name: "Post", optional: true
  
  has_many :replies, class_name: "Post", foreign_key: "reply_id"
  has_many :likes

  validates :text, length: { maximum: 250 }
end
