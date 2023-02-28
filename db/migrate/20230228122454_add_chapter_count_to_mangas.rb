class AddChapterCountToMangas < ActiveRecord::Migration[7.0]
  def change
    add_column :mangas, :chapterCount, :float
  end
end
