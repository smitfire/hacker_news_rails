class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :text
      t.references :post
      t.references :author

      t.timestamps
    end
    add_index :comments, :post_id
    add_index :comments, :author_id
  end
end
