class Notification < ActiveRecord::Base

  include Rails.application.routes.url_helpers

  EVENTS = {
    1 => :new_comment_on_character,
    2 => :new_message,
    3 => :new_fork_of_character,
    4 => :new_star_of_character
  }

  EVENT_IDS = EVENTS.invert

  validates :event_id, inclusion: { in: EVENTS.keys }
  validates :is_read, inclusion: { in: [true, false] }
  validates :notifiable, :user, presence: true

  belongs_to(
  :user,
  inverse_of: :notifications#,
  # counter_cache: true
  )

  belongs_to(:notifiable,
  inverse_of: :notifications,
  polymorphic: true
  )

  scope :read, -> { where(is_read: true) }
  scope :unread, -> { where(is_read: false) }
  scope :event, ->(event_name) { where(event_id: EVENT_IDS[event_name]) }

  def event_name
    EVENTS[self.event_id]
  end

  def url
    case self.event_name
    when :new_comment_on_character
      comment = self.notifiable
      user_character_url(comment.character.owner.id, comment.character_id)
    when :new_message
      message = self.notifiable
      message_url(message.id)
    when :new_fork_of_character
      fork = self.notifiable
      character_url(fork.from_character_id)
    when :new_star_of_character
      star = self.notifiable
      character_url(star.character_id)
    end
  end

  def text
    case self.event_name
    when :new_comment_on_character
      comment = self.notifiable
      comment_user = comment.author
      #possibly author
      character = comment.character

      "#{comment_user.username} commented on your character #{character.name}"
    end
  end



  def default_url_options
    options = {}
    options[:host] = Rails.env.production? ? "appacademy.io" : "localhost:3000"
    options
  end




end
