class Comment < ActiveRecord::Base

  validates :body, presence: true

  validates :author, :character, presence: true



  belongs_to(
  :author, :inverse_of => :comments,
  class_name: "User",
  foreign_key: :author_id,
  primary_key: :id
  )

  belongs_to(
  :character, :inverse_of => :comments,
  counter_cache: true,
  class_name: "Character",
  foreign_key: :character_id,
  primary_key: :id
  )

end
