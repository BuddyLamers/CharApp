class Star < ActiveRecord::Base

  validates :user, :character, presence: true

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



end
