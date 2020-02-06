class AddBodyAndTitleToPosts < ActiveRecord::Migration[6.0]
  def change
    add_column :posts, :body, :string
    add_column :posts, :title, :string
    change_column :posts, :body, :string, null: false
    change_column :posts, :title, :string, null: false
  end
end
