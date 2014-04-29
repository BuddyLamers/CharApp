class Message < ActiveRecord::Base

  validates :sender, :receiver, presence: true
  validates :title, :body, presence: true

  after_create :set_notification

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

  has_many(
  :notifications,
  as: :notifiable,
  inverse_of: :notifiable,
  dependent: :destroy
  )

  def set_notification
    #notification.user here is the user who is notified
    notification = self.notifications.unread.event(:new_message).new
    notification.user = self.receiver
    notification.save!
  end

end
