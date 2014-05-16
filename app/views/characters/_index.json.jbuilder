# json.id character.id
# json.name character.name
# json.tagline character.tagline
# json.created_at character.created_at
# json.updated_at character.updated_at
json.array! characters do |character|


  json.(character, :id, :name, :tagline, :created_at,
        :updated_at, :details_count, :comments_count)

        json.url ("#/characters/" + character.id.to_s)

  json.duplicate_forks_count  character.duplicate_forks.count
  json.stars_count  character.stars_count

  json.is_private  character.private
  json.is_fork_duplicate  character.is_fork_duplicate?

  json.creator_username  character.creator.username
  json.creator_url  user_url(character.creator)

  if character.is_fork_duplicate?
    json.original_creator_username  character.original_creator.username
    json.original_creator_url user_url(character.original_creator)
  end

  json.details character.details do |detail|
    json.title detail.title
    json.body detail.body
  end

  json.comments character.comments do |comment|
    json.body comment.body
    json.created_at comment.created_at
    json.author_username comment.author.username
    json.author_url user_url(comment.author)
  end

end
# call jbuilder views from api controllers?
# should i be passing a url as a variable?
# how to call "character" for ALL characters as a collection.
# a little help bootstrapping that in (can't find guide)
