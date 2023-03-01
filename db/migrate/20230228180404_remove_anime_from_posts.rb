class RemoveAnimeFromPosts < ActiveRecord::Migration[7.0]
  def change
    remove_reference :posts, :anime, null: false, foreign_key: true
  end
end
