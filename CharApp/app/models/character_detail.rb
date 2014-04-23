class CharacterDetail < ActiveRecord::Base

  validates :character_id, :title, :body, presence: true


  belongs_to(
  :character,
  class_name: "Character",
  foreign_key: :character_id,
  primary_key: :id)


end
