user_bruno = User.create!(first_name: 'Bruno', last_name: 'Parma', username: 'brunoparma')
user_larry = User.create!(first_name: 'Larry', last_name: 'Page', username: 'larrypage')
user_elon = User.create!(first_name: 'Elon', last_name: 'Musk', username: 'elonmusk')
user_jeff = User.create!(first_name: 'Jeff', last_name: 'Bezos', username: 'jeffbezos')
user_tim = User.create!(first_name: 'Tim', last_name: 'Cook', username: 'timcook')

user_bruno.friendships.create(friend_id: user_larry.id)
user_bruno.friendships.create(friend_id: user_elon.id)
user_bruno.friendships.create(friend_id: user_jeff.id)
user_bruno.friendships.create(friend_id: user_tim.id)

user_larry.friendships.create(friend_id: user_elon.id)
