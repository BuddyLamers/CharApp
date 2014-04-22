class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :username
      t.string :email
      t.string :password_digest
      t.string :token
      t.index :token
      t.index :password_digest
      t.timestamps
    end
    add_index :users, :username, :unique => true
  end
end
