class AddColumnsToManga < ActiveRecord::Migration[7.0]
  def change
    add_column :mangas, :title, :string
    add_column :mangas, :poster, :string
    add_column :mangas, :description, :string
    add_column :mangas, :status, :string
    add_column :mangas, :startDate, :string
    add_column :mangas, :episodes, :float
  end
end
