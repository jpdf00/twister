class Post < ApplicationRecord
  belongs_to :user
  belongs_to :replied_to, class_name: "Post", optional: true
  
  has_many :replies, class_name: "Post", foreign_key: "replied_to_id"
  has_many :likes

  validates :text, length: { maximum: 250 }, presence: true
end
