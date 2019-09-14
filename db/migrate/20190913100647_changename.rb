class Changename < ActiveRecord::Migration[6.0]
  def change
  	remove_column :articles, :published, :boolean
  	add_column :articles, :status, :boolean, default: false
  end
end
