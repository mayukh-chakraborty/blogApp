class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.references :post, index: true
      t.integer :author_id
      t.text :content

      t.timestamps
    end
  end
end
