class CreateArticles < ActiveRecord::Migration[6.0]
  def change
    create_table :articles do |t|
      t.string :title
      t.text :text
      t.boolean :published
      t.integer :user_id
      t.integer :category_id

      t.timestamps
    end
  end
end
