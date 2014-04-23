class CreateCharacterDetails < ActiveRecord::Migration
  def change
    create_table :character_details do |t|
      t.integer :character_id
      t.string :title
      t.text :body
      t.index :character_id
      t.timestamps
    end
  end
end
