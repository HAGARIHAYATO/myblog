class Changepublished < ActiveRecord::Migration[6.0]
  def change
  	remove_column :articles, :published, :boolean
  	add_column :articles, :published, :boolean, default: false
  end
end
