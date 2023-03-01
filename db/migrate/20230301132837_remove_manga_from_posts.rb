class RemoveMangaFromPosts < ActiveRecord::Migration[7.0]
  def change
    remove_reference :posts, :manga, null: false, foreign_key: true
  end
end
