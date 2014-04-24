class Character < ActiveRecord::Base
  validates :name, :tagline, presence: true
  validates :creator, :details, :comments, :forks, presence: true
  #validates :private, :inclusion => { [true, false] }


  belongs_to(
  :creator,
  class_name: 'User',
  foreign_key: :user_id,
  primary_key: :id
  )

  has_many(
  :details, inverse_of: :character,
  class_name: "CharacterDetail",
  foreign_key: :character_id,
  primary_key: :id
  )

  has_many(
  :comments, inverse_of: :character,
  class_name: "Comment",
  foreign_key: :character_id,
  primary_key: :id
  )

  has_many(
  :duplicate_forks, inverse_of: :from_character,
  class_name: "Fork",
  foreign_key: :from_character_id,
  primary_key: :id
  )

  has_one(
  :source_fork, inverse_of: :to_character,
  class_name: "Fork",
  foreign_key: :to_character_id,
  primary_key: :id
  )

  #has a source_character through source_fork


end
