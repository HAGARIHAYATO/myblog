class CreateComments < ActiveRecord::Migration[6.0]
  def change
    create_table :comments do |t|
      t.string :name
      t.text :content
      t.bigint :article_id

      t.timestamps
    end
  end
end
