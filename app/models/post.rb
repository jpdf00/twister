class Post < ApplicationRecord
  belongs_to :user

  has_many :likes

  validates :text, length: { maximum: 250 }
end
