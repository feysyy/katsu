class AddColumnsToAnime < ActiveRecord::Migration[7.0]
  def change
    add_column :animes, :title, :string
    add_column :animes, :poster, :string
    add_column :animes, :description, :string
    add_column :animes, :status, :string
    add_column :animes, :startDate, :string
    add_column :animes, :episodes, :float
  end
end
