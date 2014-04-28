class AddMessagesCounterCache < ActiveRecord::Migration
  def change
    add_column(:users, :received_messages_count, :integer)
    add_column(:users, :sent_messages_count, :integer)
  end
end
