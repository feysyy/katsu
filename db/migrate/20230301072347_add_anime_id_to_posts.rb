class AddAnimeIdToPosts < ActiveRecord::Migration[7.0]
  def change
    add_column :posts, :anime_id, :string
  end
end
