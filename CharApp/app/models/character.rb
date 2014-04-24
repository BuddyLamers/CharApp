class Character < ActiveRecord::Base
  validates :name, :tagline, presence: true
  #validates :private, :inclusion => { [true, false] }
  validates :creator, presence: true

  belongs_to(
  :creator, :inverse_of => :characters,
  class_name: 'User',
  foreign_key: :user_id,
  primary_key: :id
  )

  has_many(
  :details, :inverse_of => :character,
  class_name: "CharacterDetail",
  foreign_key: :character_id,
  primary_key: :id
  )

end
