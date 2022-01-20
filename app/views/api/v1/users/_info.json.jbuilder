json.id                 user.id
json.full_name          user.full_name
json.username           user.username
json.first_name         user.first_name
json.last_name          user.last_name
json.friendships        user.friendships.each do |friendship|
  json.partial! 'friendship', friendship: friendship
end
