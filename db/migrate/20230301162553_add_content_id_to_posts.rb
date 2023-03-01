class AddContentIdToPosts < ActiveRecord::Migration[7.0]
  def change
    add_column :posts, :content_id, :string
  end
end
