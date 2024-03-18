class CreatePosts < ActiveRecord::Migration[7.0]
  def change
    create_table :posts do |t|
      t.integer    :game_mode_id, null: false
      t.text       :content,      null: false
      t.references :user,         null: false, foreign_key: true
      t.timestamps
    end
  end
end
