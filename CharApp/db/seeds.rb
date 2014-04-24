# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


User.create(username: "buddy",
            email: "buddylamers@gmail.com",
            password: "buddy01",
            activated: true)

User.create(username: "david",
            email: "davidpionke@gmail.com",
            password: "david01",
            activated: false)

User.create(username: "JKRowling",
            email: "JKRowling@gmail.com",
            password: "JKRowling01",
            activated: true)

Character.create(name: "bob",
                 tagline: "a really complex character",
                 private: false,
                 user_id: 1
                )

Character.create(name: "Sonic",
                 tagline: "a blue hedgehog",
                 private: false,
                 user_id: 1
                )

Character.create(name: "Harry Potter",
                 tagline: "a wizard boy and hero",
                 private: false,
                 user_id: 3
                )

Character.create(name: "Hermione Granger",
                 tagline: "a witch born into a muggle family",
                 private: false,
                 user_id: 3
                )

Character.create(name: "Ron Weasely",
                 tagline: "a poor boy from a large wizard famliy",
                 private: false,
                 user_id: 3
                )

CharacterDetail.create(character_id: 3,
                       title: "childhood",
                       body: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."
                       )

CharacterDetail.create(character_id: 3,
                       title: "teenage years",
                       body: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."
                       )


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


