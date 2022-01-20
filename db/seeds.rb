User_bruno = User.create!(first_name: 'Bruno', last_name: 'Parma', username: 'brunoparma')
User_larry = User.create!(first_name: 'Larry', last_name: 'Page', username: 'larrypage')
User_elon = User.create!(first_name: 'Elon', last_name: 'Musk', username: 'elonmusk')
User_jeff = User.create!(first_name: 'Jeff', last_name: 'Bezos', username: 'jeffbezos')
User_tim = User.create!(first_name: 'Tim', last_name: 'Cook', username: 'timcook')

User_bruno.friendships.create(friend_id: User_larry.id)
User_bruno.friendships.create(friend_id: User_elon.id)
User_bruno.friendships.create(friend_id: User_jeff.id)
User_bruno.friendships.create(friend_id: User_tim.id)

User_larry.friendships.create(friend_id: User_elon.id)
