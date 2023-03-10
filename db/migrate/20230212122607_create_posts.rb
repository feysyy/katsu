class CreatePosts < ActiveRecord::Migration[7.0]
  def change
    create_table :posts do |t|
      t.string :body
      t.references :user, null: false, foreign_key: true
      t.references :anime, null: false, foreign_key: true
      t.references :manga, null: false, foreign_key: true

      t.timestamps
    end
  end
end
