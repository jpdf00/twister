class AddReplyIdToPosts < ActiveRecord::Migration[7.0]
  def change
    add_reference :posts, :reply, null: true, foreign_key: { to_table: :posts }, type: :uuid, index: true
  end
end
