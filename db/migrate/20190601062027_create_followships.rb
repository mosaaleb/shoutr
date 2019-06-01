class CreateFollowships < ActiveRecord::Migration[5.2]
  def change
    create_table :followships do |t|
      t.references :followed_user, foreign_key: { to_table: :users}, null: false
      t.references :follower, foreign_key: { to_table: :users}, null: false

      t.timestamps
    end
    add_index :followships, [:followed_user_id, :follower_id], unique: true
  end
end

