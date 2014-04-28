class Star < ActiveRecord::Base

  validates :user, :character, presence: true

    belongs_to(
    :user,
    class_name: 'User',
    foreign_key: :user_id,
    primary_key: :id
    )

    belongs_to(
    :character,
    class_name: 'Character',
    foreign_key: :character_id,
    primary_key: :id
    )



end
