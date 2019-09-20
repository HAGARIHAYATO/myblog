class AddDescriptionToArticles < ActiveRecord::Migration[6.0]
  def change
    add_column :articles, :description, :text
    remove_column :articles, :user_id, :integer
    add_column :categories, :category_status, :integer
  end
end
