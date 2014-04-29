class Star < ActiveRecord::Base

  validates :user, :character, presence: true

  before_create :set_notification

    belongs_to(
    :user,
    counter_cache: true,
    class_name: 'User',
    foreign_key: :user_id,
    primary_key: :id
    )

    belongs_to(
    :character,
    counter_cache: true,
    class_name: 'Character',
    foreign_key: :character_id,
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
      notification = self.notifications.unread.event(:new_star_of_character).new
      notification.user = self.character.creator
      notification.save!
    end


end
