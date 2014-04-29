class Fork < ActiveRecord::Base

  validates :to_character, :from_character, presence: true

  before_create :set_notification

  belongs_to(
  :to_character, :inverse_of => :source_fork,
  class_name: "Character",
  foreign_key: :to_character_id,
  primary_key: :id)

  belongs_to(
  :from_character, :inverse_of => :duplicate_forks,
  counter_cache: :duplicate_forks_count,
  class_name: "Character",
  foreign_key: :from_character_id,
  primary_key: :id)

  has_many(
  :notifications,
  as: :notifiable,
  inverse_of: :notifiable,
  dependent: :destroy
  )

  def set_notification
    #notification.user here is the user who is notified
    notification = self.notifications.unread.event(:new_fork_of_character).new
    notification.user = self.from_character.creator
    notification.save!
  end

end
