class AddPrivateColumnToUsersTable < ActiveRecord::Migration
  def change
    add_column(:characters, :private, :boolean, default: false)
  end
end
