class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.integer :author_id
      t.integer :character_id
      t.text :body
      t.index :author_id
      t.index :character_id
      t.timestamps
    end
  end
end
