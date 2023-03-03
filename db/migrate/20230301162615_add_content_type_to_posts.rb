class AddContentTypeToPosts < ActiveRecord::Migration[7.0]
  def change
    add_column :posts, :content_type, :string
  end
end
