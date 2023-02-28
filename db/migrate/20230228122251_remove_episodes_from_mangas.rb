class RemoveEpisodesFromMangas < ActiveRecord::Migration[7.0]
  def change
    remove_column :mangas, :episodes, :float
  end
end
