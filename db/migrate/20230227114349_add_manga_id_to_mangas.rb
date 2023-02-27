class AddMangaIdToMangas < ActiveRecord::Migration[7.0]
  def change
    add_column :mangas, :manga_id, :string
  end
end
