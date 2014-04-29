class Character < ActiveRecord::Base
  validates :name, :tagline, presence: true
  validates :creator, presence: true

  #validates :private, :inclusion => { [true, false] }


  belongs_to(
  :creator, counter_cache: true,
  class_name: 'User',
  foreign_key: :user_id,
  primary_key: :id
  )

  has_many(
  :details, inverse_of: :character,
  dependent: :destroy,
  class_name: "CharacterDetail",
  foreign_key: :character_id,
  primary_key: :id
  )

  has_many(
  :comments, inverse_of: :character,
  dependent: :destroy,
  class_name: "Comment",
  foreign_key: :character_id,
  primary_key: :id
  )

   has_many(
   :stars,
   class_name: 'Star',
   dependent: :destroy,
   foreign_key: :character_id,
   primary_key: :id
   )

  has_many(
  :duplicate_forks, inverse_of: :from_character,
  dependent: :destroy,
  class_name: "Fork",
  foreign_key: :from_character_id,
  primary_key: :id
  )

  has_one(
  :source_fork, inverse_of: :to_character,
  dependent: :destroy,
  class_name: "Fork",
  foreign_key: :to_character_id,
  primary_key: :id
  )

  has_one(
  :source_character,
  through: :source_fork,
  source: :from_character
  )

  def is_fork_duplicate?
    self.source_fork.nil? ? false : true
  end

  def original_creator
    self.source_character.creator
  end

  def has_been_forked_by_current_user

  end



end
