class Character < ActiveRecord::Base
  validates :name, :tagline, :user_id, presence: true
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
end
