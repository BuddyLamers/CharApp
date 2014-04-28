class CreateMessages < ActiveRecord::Migration
  def change
    create_table :messages do |t|
      t.string :title
      t.string :body
      t.integer :sender_id
      t.integer :receiver_id
      t.index :sender_id
      t.index :receiver_id
      t.timestamps
    end
  end
end
