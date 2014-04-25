class CreateCharacters < ActiveRecord::Migration
  def change
    create_table :characters do |t|
      t.string :name
      t.string :tagline
      t.boolean :private, default: false
      t.integer :user_id
      t.index :user_id
      t.index :name
      t.timestamps
    end
  end
end
