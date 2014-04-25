class Fork < ActiveRecord::Base

  validates :to_character, :from_character, presence: true

  belongs_to(
  :to_character, :inverse_of => :source_fork,
  class_name: "Character",
  foreign_key: :to_character_id,
  primary_key: :id)

  belongs_to(
  :from_character, :inverse_of => :duplicate_forks,
  class_name: "Character",
  foreign_key: :from_character_id,
  primary_key: :id)

end
