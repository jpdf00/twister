json.extract! network, :id, :is_following_id, :being_followed_id, :created_at, :updated_at
json.url network_url(network, format: :json)
