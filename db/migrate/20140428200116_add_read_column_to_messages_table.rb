class AddReadColumnToMessagesTable < ActiveRecord::Migration
  def change
    add_column(:messages, :already_read, :boolean, default: false)
  end
end
