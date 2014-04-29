class ForksController < ApplicationController

  def create
    #check if a fork already exists in the view-remove button
    character_to_fork = Character.find(params[:character_id])
    #you have to_character_id here...
    duplicate_character = character_to_fork.dup
    duplicate_details = create_attributes_array(
                      character_to_fork.details.dup)

    duplicate_character.user_id = current_user.id
    duplicate_character.details.new(duplicate_details)
    duplicate_character.id = nil

    #this should possibly instead create a new character
    #from the attributes of character_to_fork

    duplicate_character.save!

    fork = Fork.new(
          from_character_id: character_to_fork.id,
          to_character_id: duplicate_character.id
          )

    fork.save!

    redirect_to character_url(duplicate_character)
  end

  private
  def create_attributes_array(relations)
    results = []
    relations.each do |relation|
      sub_result = {}
      sub_result['title'] = relation.title
      sub_result['body'] = relation.body
      results << sub_result
    end
    return results
  end

end
