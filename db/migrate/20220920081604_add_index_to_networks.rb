class AddIndexToNetworks < ActiveRecord::Migration[7.0]
  def change
    add_index :networks, [:is_following_id, :being_followed_id], unique: true, name: 'uniq_connection'
  end
end
