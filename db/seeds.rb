#encoding: utf-8

User.create!([
  {username: "Buddy", email: "buddylamers@gmail.com", password_digest: "$2a$10$T9s2lS5orxCJnJKygG2RDu/B0fS4eQitcuXVHUSQiMx5Ed85o8gNa", token: "d_8u7uNE56L4SCXX6gX0JQ", activated: true, activation_token: "zFlGMBKpEoPSBNMa7Lkrsw", characters_count: 0, stars_count: 0, received_messages_count: 0, sent_messages_count: 0, private: false},
  {username: "JKRowling", email: "JKRowling@gmail.com", password_digest: "$2a$10$2jHTa4ENzof2tLAWN.h/LOyFpUPKwu/H4BfuM54odpsUVf5gYhcgm", token: "54GbL-EisDoyoQdINrlQfQ", activated: true, activation_token: "VeZ8th2_D2lVP6w904Ja5A", characters_count: 0, stars_count: 0, received_messages_count: 0, sent_messages_count: 0, private: false},
  {username: "Adrian Cann", email: "davidpionke@gmail.com", password_digest: "$2a$10$oae9vF/MzaOA05ooGhUrvevyi.Qb2U07F2ng7T755LqndElbEDunm", token: "WJqtL-Wxi2VR6e7sgYXsqA", activated: true, activation_token: "JR9SKBQrG2nOGn-oKHcYMA", characters_count: 0, stars_count: 0, received_messages_count: 0, sent_messages_count: nil, private: false}
])
Character.create!([
  {name: "Harry Potter", tagline: "A wizard boy and hero", private: false, user_id: 2, details_count: 0, comments_count: 0, duplicate_forks_count: nil, stars_count: 0},
  {name: "Rebulba", tagline: "Sorceror of time and space", private: false, user_id: 3, details_count: 0, comments_count: 0, duplicate_forks_count: nil, stars_count: 0},
  {name: "Sonic", tagline: "A blue hedgehog. Runs at supersonic speeds", private: false, user_id: 1, details_count: 0, comments_count: 0, duplicate_forks_count: nil, stars_count: 0},
  {name: "Heracles", tagline: "A Greek/Roman Hero", private: false, user_id: 1, details_count: 0, comments_count: 0, duplicate_forks_count: nil, stars_count: 0},
  {name: "Ron Weasely", tagline: "A poor boy from a large wizard famliy", private: false, user_id: 2, details_count: 0, comments_count: 0, duplicate_forks_count: nil, stars_count: 0},
])
CharacterDetail.create!([
  {character_id: 3, title: "Premise", body: 'Almost all games in the series feature a blue hedgehog named Sonic as the central player character and protagonist. The games detail Sonic and his allies attempt to save the world from various threats, primarily the evil genius Dr. Ivo "Eggman" Robotnik, the main antagonist of the series. Robotniks aim is to rule the planet; to achieve this, he usually attempts to destroy Sonic and to acquire the powerful Chaos Emeralds.'},
  {character_id: 3, title: "Sega Genesis and add-on devices", body: 'The first Sonic game, titled Sonic the Hedgehog, was a platform game released in 1991[1] that featured protagonist Sonic running through the games levels in order to stop Doctor Robotnik from taking over the world.[2] The game focused Sonics ability to run and to jump at high speeds with the use of springs, checkpoints, and loops.[2] Its sequel, Sonic the Hedgehog 2, a platform game released in 1992,[3] increased the overall size and speed of the series gameplay[4] and was the second best-selling Genesis game of all time.[5] The game introduced Sonics sidekick, Miles "Tails" Prower, who followed Sonic throughout the game, and allowed a second player to control him in a limited fashion.[4] and the "spin dash" maneuver, which allowed Sonic to boost forwards quickly when stopped.[4] The next sequel, Sonic the Hedgehog 3, was a third platform game in the Sonic series released in 1994.[6] The game introduced a temporary shield maneuver,[7] added new shield types to the series,[8] and allowed Tails to fly under a players control.[8] It also introduced a new character, Knuckles the Echidna, who served as an additional antagonist with Doctor Robotnik for the game.[8] Sonic & Knuckles, another platform game in the Sonic series, was released later in 1994.[9] The game introduced Knuckles as a playable character with gliding and wall climbing abilities[9] and allowed gamers to plug in Sonic the Hedgehog 3 to the top of the Sonic and Knuckles cartridge as part of the games "lock on" functionality. This allowed gamers to play the game as it was originally intended;[9] the games were intended to be one title, but were split due to space and time constraints.'},
  {character_id: 4, title: "First labor: Nemian Lion", body: 'According to one version of the myth, the Nemean lion took women as hostages to its lair in a cave near Nemea, luring warriors from nearby towns to save the damsel in distress. After entering the cave, the warrior would see the woman (usually feigning injury) and rush to her side. Once he was close, the woman would turn into a lion and kill the warrior, devouring his remains and giving the bones to Hades.'},
  {character_id: 4, title: "Second Labor: Learnaean hydra", body: "Seriously, there are ten of these?"},
  {character_id: 1, title: "Harry Potter and the Sorceror's Stone", body: "Harry Potter is the most miserable, lonely boy you can imagine. He’s shunned by his relatives, the Dursley’s, that have raised him since he was an infant. He’s forced to live in the cupboard under the stairs, forced to wear his cousin Dudley’s hand-me-down clothes, and forced to go to his neighbour’s house when the rest of the family is doing something fun. Yes, he’s just about as miserable as you can get."},
  {character_id: 1, title: "The Chamber of Secrets", body: "It’s been another long summer at the Dursley’s for Harry Potter. He can’t wait to get back to Hogwarts and is counting down the days until he can return. He’s surprised when, on his birthday, a strange elfish creature named Dobby shows up with dire warnings for Harry: He must not return to Hogwarts!"},
  {character_id: 5, title: "Harry Potter and the Philosopher's Stone", body: "Rowling first introduces Ron with his family in Harry Potter and the Philosopher's Stone. Harry is lost at King's Cross railway station and the Weasleys guide him through the barrier of Platform 9¾ into the wizarding world. Ron and Harry share a compartment on the Hogwarts Express, and they begin their friendship: Ron fascinated with the famous Harry, and Harry fascinated with the ordinary Ron. It is here that they both meet Hermione Granger as well, whom they initially dislike but who later becomes their close friend after they save each other during a dangerous encounter with a mountain troll.[PS Ch.6] Ron and Harry share the same classes throughout the series, and generally have similar academic successes and disappointments. Ron plays a vital part in the quest to save the Philosopher's Stone. His strategy at Wizard's Chess allows Hermione and Harry to proceed safely through a dangerous life-size, animated chess game. During the game, Ron allows his piece to be sacrificed and is subsequently knocked unconscious.[PS Ch.16] At the Leaving Feast, the last dinner of the school year, Albus Dumbledore, Hogwarts' Headmaster, awards Ron fifty House points to Gryffindor for 'the best-played game of chess Hogwarts has seen in many years.' These last-minute points help support Gryffindor's win of the House Cup."},
  {character_id: 5, title: "Harry Potter and the Chamber of Secrets", body: "The second instalment, Harry Potter and the Chamber of Secrets (1998), takes place the year following the events of the Philosopher's Stone. During the summer, Ron attempts to write to Harry several times. He receives no reply because Dobby the house elf is stopping Harry's wizard mail. Ron becomes so concerned that he and his brothers Fred and George fly their father's enchanted Ford Anglia car to Harry's home at his aunt and uncle's house. Harry spends the next month at the Weasleys' home, the Burrow. While attempting to depart from King's Cross station, Harry and Ron find themselves unable to enter the barrier to access Platform 9¾. With Harry, Ron conceives the idea of taking the flying Ford Anglia to Hogwarts. The plan is successful, but the Anglia loses power at the end of the journey and crashes into the Whomping Willow. Ron and Harry survive the impact, but the car drives itself off into the Forbidden Forest, a forest at the edge of the Hogwarts grounds in which student access is prohibited. Ron receives a Howler from his mother, berating him for taking the car."},
  {character_id: 2, title: "The beginning", body: "Meanwhile, in a dimension incomparable to our own, Rebulba the time sorcerer sent a mental probe across time and space. His vast consciousness engulfed my own in a deadly struggle for my soul. I cried out for Beaker: the Realm Guardian to shield me from my supernatural foe. If my resolve should waiver, the dark one would have a hold in this realm once more."},
  {character_id: 2, title: "The omen", body: "Rebulba the Shadow Mage reached out from his incomprehensible dimension and used his vast consciousness to cause my roommate to misplace his keys. His influence in our realm is slight but should Rebeaker the Guardian’s protective spell waiver, our entire dimension could be under his control. Although the omniscient Gaurdian’s ancient sorcery has yet to be undone, darkness gathers in the desolate abyss inhabited by Rebulba."},
  {character_id: 2, title: "The breach", body: "Rebulba’s sorcery opened a wormhole into our dimension. The god-like being’s mental energy radiated out for light-years from the penetration point. Luckily the breach occurred far from any sentient life. Should the desolate conjurer’s mental energy come into contact with life, our galaxy would be infected. Ancient scrolls from early civilizations describe the dark-mage’s menace as he battled the realm guardians for a hold in our dimension."},
  {character_id: 2, title: "The only defense", body: "It was said that only with the wisdom and vast power of Beaker, the Oldest Gaurdian of our Realm was able to thwart the infectious influence of Rebulba. So it is said. But even the ancient ones have a date of expiration. Even those that have shielded the world from forces that would have crumpled our universe to spec smaller than a pin— will one day falter in their duties."}
])
Comment.create!([
  {author_id: 3, character_id: 1, body: "I LOVE Harry Potter"},
  {author_id: 3, character_id: 2, body: "AWESOME!!! Keep them coming!"},
  {author_id: 3, character_id: 5, body: "This character seems to have potential. I should accept you as an apprentice."},
  {author_id: 3, character_id: 3, body: "Trust me: his ending is going to be great"},
  {author_id: 2, character_id: 4, body: "I think Ron is a much stronger character than Harry"},
  {author_id: 3, character_id: 1, body: "I belive Sega may want to have a word with you"},
  {author_id: 2, character_id: 1, body: "Way past cool!"},
  {author_id: 2, character_id: 2, body: "How can he fly?"}
])
Message.create!([
  {title: "Hey, I really like your books!", body: "Seriously! They are kindof awesome. Actually, prettymuch everyone thinks so.", sender_id: 1, receiver_id: 3, unread: true},
  {title: "I don't get it...", body: "What's with Rebulba? Is this some sort of inside joke...", sender_id: 1, receiver_id: 2, unread: true},
  {title: "A writer's advice", body: "Don't copy other's work... it's illegal", sender_id: 3, receiver_id: 1, unread: true},
  {title: "A proposal for you!", body: "I find this \"Rebulba\" character intriguing... I would like to include him in my next book!", sender_id: 3, receiver_id: 2, unread: true},
  {title: "Hey, I'm on your site!", body: "Awesome! Thanks dude!", sender_id: 2, receiver_id: 1, unread: true},
  {title: "How can I write as well as you?", body: "Seriously, how do you do it?", sender_id: 2, receiver_id: 3, unread: true}
])
Star.create!([
  {user_id: 1, character_id: 5},
  {user_id: 1, character_id: 4},
  {user_id: 2, character_id: 4},
  {user_id: 2, character_id: 3},
  {user_id: 2, character_id: 2},
  {user_id: 3, character_id: 5},
  {user_id: 3, character_id: 1},
  {user_id: 3, character_id: 2}
])
Notification.create!([

])
