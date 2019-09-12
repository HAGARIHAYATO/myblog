class Change < ActiveRecord::Migration[6.0]
  def change
  	remove_column :articles, :category_id, :string
  	add_column :articles, :category_id, :bigint
  end
end
