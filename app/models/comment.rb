class Comment < ActiveRecord::Base

  validates :body, presence: true

  validates :author, :character, presence: true

  has_many :notifications, as: :notifiable, inverse_of: :notifiable, dependent: :destroy

  after_create :set_notification

  belongs_to(
  :author, :inverse_of => :comments,
  class_name: "User",
  foreign_key: :author_id,
  primary_key: :id
  )

  belongs_to(
  :character, :inverse_of => :comments,
  counter_cache: true,
  class_name: "Character",
  foreign_key: :character_id,
  primary_key: :id
  )

  def set_notification

    notification = self.notifications.unread.event(:new_comment_on_character).new
    notification.user = self.character.creator
    notification.save!
  end

end
