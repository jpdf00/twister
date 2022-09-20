class Network < ApplicationRecord
  belongs_to :is_following, class_name: "User"
  belongs_to :being_followed, class_name: "User"

  validates :is_following_id, uniqueness: { scope: :being_followed_id }
end
