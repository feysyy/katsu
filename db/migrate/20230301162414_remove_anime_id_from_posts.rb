class RemoveAnimeIdFromPosts < ActiveRecord::Migration[7.0]
  def change
    remove_column :posts, :anime_id, :string
  end
end
