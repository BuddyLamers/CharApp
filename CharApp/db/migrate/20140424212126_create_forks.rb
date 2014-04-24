class CreateForks < ActiveRecord::Migration
  def change
    create_table :forks do |t|
      t.integer :from_character_id
      t.integer :to_character_id
      t.index :from_character_id
      t.index :to_character_id
      t.timestamps
    end
  end
end
