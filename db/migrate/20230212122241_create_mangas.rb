class CreateMangas < ActiveRecord::Migration[7.0]
  def change
    create_table :mangas do |t|
      t.string :name
      t.string :url
      t.references :collection, null: false, foreign_key: true

      t.timestamps
    end
  end
end
