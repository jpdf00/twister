class CreateNetworks < ActiveRecord::Migration[7.0]
  def change
    create_table :networks, id: :uuid do |t|
      t.references :is_following, null: false, foreign_key: { to_table: :users }, type: :uuid, index: true
      t.references :being_followed, null: false, foreign_key: { to_table: :users }, type: :uuid, index: true

      t.timestamps
    end
  end
end
