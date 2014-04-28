class Message < ActiveRecord::Base

  validates :sender, :receiver

  belongs_to(
  :sender,
  class_name: "User",
  foreign_key: :sender_id,
  primary_key: :id
  )

  belongs_to(
  :receiver,
  counter_cache: true,
  class_name: "User",
  foreign_key: :receiver_id,
  primary_key: :id
  )
end
