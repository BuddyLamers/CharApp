class Message < ActiveRecord::Base

  validates :sender, :receiver, presence: true

  belongs_to(
  :sender, inverse_of: :sent_messages,
  counter_cache: :sent_messages_count,
  class_name: "User",
  foreign_key: :sender_id,
  primary_key: :id
  )

  belongs_to(
  :receiver, inverse_of: :received_messages,
  counter_cache: :received_messages_count,
  class_name: "User",
  foreign_key: :receiver_id,
  primary_key: :id
  )

end
