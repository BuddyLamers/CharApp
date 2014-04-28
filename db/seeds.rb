# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


User.create(username: "Buddy",
            email: "buddylamers@gmail.com",
            password: "buddy01",
            activated: true)

User.create(username: "Adrian Cann",
            email: "davidpionke@gmail.com",
            password: "Adrian01",
            activated: true)

User.create(username: "JKRowling",
            email: "JKRowling@gmail.com",
            password: "JKRowling01",
            activated: true)



Character.create(name: "Sonic",
                 tagline: "A blue hedgehog. Runs at supersonic speeds",
                 private: false,
                 user_id: 1
                )

Character.create(name: "Tails",
                 tagline: "Fox sidekick to Sonic the Hedgehog. Has two tails.",
                 private: false,
                 user_id: 1
                )

Character.create(name: "Harry Potter",
                 tagline: "A wizard boy and hero",
                 private: false,
                 user_id: 3
                )

Character.create(name: "Ron Weasely",
                 tagline: "A poor boy from a large wizard famliy",
                 private: false,
                 user_id: 3
                )

Character.create(name: "Rebulba",
                tagline: "Sorceror of time and space",
                private: false,
                user_id: 2
               )

CharacterDetail.create(character_id: 1,
                      title: "Young Childhood",
                      body: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."
                      )

CharacterDetail.create(character_id: 1,
                      title: "Death of his Grandfather",
                      body: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."
                      )

CharacterDetail.create(character_id: 2,
                      title: "Growing Up",
                      body: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."
                      )

CharacterDetail.create(character_id: 2,
                      title: "Meeting Sonic and becoming a Freedom Fighter",
                      body: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."
                      )

CharacterDetail.create(character_id: 3,
                       title: "How he got his Scar",
                       body: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."
                       )

CharacterDetail.create(character_id: 3,
                       title: "Entry into Hogwarts",
                       body: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."
                       )

CharacterDetail.create(character_id: 4,
                       title: "Growing up as the youngest brother",
                       body: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."
                       )

CharacterDetail.create(character_id: 4,
                       title: "Meeting Harry and becoming relevant",
                       body: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."
                       )

CharacterDetail.create(character_id: 5,
                       title: "The beginning",
                       body: "Meanwhile, in a dimension incomparable to our own, Rebulba the time sorcerer sent a mental probe across time and space. His vast consciousness engulfed my own in a deadly struggle for my soul. I cried out for Beaker: the Realm Guardian to shield me from my supernatural foe. If my resolve should waiver, the dark one would have a hold in this realm once more."
                       )

CharacterDetail.create(character_id: 5,
                       title: "The omen",
                       body: "Rebulba the Shadow Mage reached out from his incomprehensible dimension and used his vast consciousness to cause my roommate to misplace his keys. His influence in our realm is slight but should Rebeaker the Guardian’s protective spell waiver, our entire dimension could be under his control. Although the omniscient Gaurdian’s ancient sorcery has yet to be undone, darkness gathers in the desolate abyss inhabited by Rebulba."
                       )

CharacterDetail.create(character_id: 5,
                       title: "The breach",
                       body: "Rebulba’s sorcery opened a wormhole into our dimension. The god-like being’s mental energy radiated out for light-years from the penetration point. Luckily the breach occurred far from any sentient life. Should the desolate conjurer’s mental energy come into contact with life, our galaxy would be infected. Ancient scrolls from early civilizations describe the dark-mage’s menace as he battled the realm guardians for a hold in our dimension."
                       )

CharacterDetail.create(character_id: 5,
                       title: "The only defense",
                       body: "It was said that only with the wisdom and vast power of Beaker, the Oldest Gaurdian of our Realm was able to thwart the infectious influence of Rebulba. So it is said. But even the ancient ones have a date of expiration. Even those that have shielded the world from forces that would have crumpled our universe to spec smaller than a pin— will one day falter in their duties."
                       )

Comment.create(author_id: 1,
              character_id: 3,
              body: "I LOVE Harry Potter"
              )

Comment.create(author_id: 1,
              character_id: 5,
              body: "AWESOME!!! Keep them coming!"
              )

Comment.create(author_id: 3,
              character_id: 5,
              body: "This character seems to have potential. I should accept you as an apprentice."
              )

Comment.create(author_id: 3,
              character_id: 3,
              body: "Trust me: his ending is going to be great"
              )

Comment.create(author_id: 2,
             character_id: 4,
             body: "I think Ron is a much stronger character than Harry"
             )

Comment.create(author_id: 3,
             character_id: 1,
             body: "I belive Sega may want to have a word with you"
             )

Comment.create(author_id: 2,
             character_id: 1,
             body: "Way past cool!"
             )

Comment.create(author_id: 2,
             character_id: 2,
             body: "How can he fly?"
             )

Star.create(user_id: 1,
            character_id: 5)

Star.create(user_id: 1,
            character_id: 4)

Star.create(user_id: 2,
            character_id: 4)

Star.create(user_id: 2,
            character_id: 3)

Star.create(user_id: 2,
            character_id: 2)

Star.create(user_id: 3,
            character_id: 5)

Star.create(user_id: 3,
            character_id: 1)

Star.create(user_id: 3,
            character_id: 2)




# 20.times do |u|
#   User.create(username: "user #{u}",
#               email: "#{u}@gmail.com",
#               password: "user#{u}",
#               activated: true)
#   5.times do |c|
#     Character.create(name: "bob",
#                      tagline: "a really complex character",
#                      private: false,
#                      user_id: 1
#                     )
#
#     3.times do |d|
#
#     end
#
#     3.times do |co|
#
#     end
#
#   end
#
# end


