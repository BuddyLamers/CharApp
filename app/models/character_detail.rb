class CharacterDetail < ActiveRecord::Base

  validates :title, :body, presence: true
  validates :character, presence: true

  belongs_to(
  :character, :inverse_of => :details,
  counter_cache: :details_count,
  class_name: "Character",
  foreign_key: :character_id,
  primary_key: :id)


end
