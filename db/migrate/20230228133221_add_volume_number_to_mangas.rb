class AddVolumeNumberToMangas < ActiveRecord::Migration[7.0]
  def change
    add_column :mangas, :volumeNumber, :string
  end
end
