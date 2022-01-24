# Venmo API
This API was built to support a payment between friends.
It was built in Ruby on rails 2.7.2.

How to use
* Clone this repository
* Install PostgreSQL in case you don't have it
* Create your database.yml and application.yml file
* bundle install
* rake db:create
* rake db:migrate
* rake db:seed
* rspec (optional)
* rails s

# DataBase Model

<img width="500" src="https://user-images.githubusercontent.com/53717512/150684808-506ffcf0-7839-426b-95c0-45357cfc7503.png">

# Seed Friendship Model

<img width="500" src="https://user-images.githubusercontent.com/53717512/150685157-fb70a58a-f6dd-460c-99c7-5b727d1bf240.png">

# Endpoints


POST  /api/v1/users/{user_id}/payments (generate friends payments)

<img width="500" src="https://user-images.githubusercontent.com/53717512/150615103-4d76c006-4515-47e9-939a-ff71aeeb3b67.png">

Get  /api/v1/users/{user_id}/feed?page=1 (get the transaction feed)

<img width="500" src="https://user-images.githubusercontent.com/53717512/150615370-cde09eb5-b9e7-40b1-9923-92a73ef1ebed.png">

Get  /api/v1/users/{user_id}/balance (get user account balance)

<img width="300" src="https://user-images.githubusercontent.com/53717512/150615425-52b96199-dda0-4439-b845-880e3ad436f1.png">


Get  /api/v1/users (List users with all friends)

<img width="500" src="https://user-images.githubusercontent.com/53717512/150615484-b0290b8a-ba06-406b-810b-0c8871af8397.png">

# CODE QUALITY
 
 I have added some linters and code quality tools that I usually use:
 
    sh 'bundle exec brakeman . -z -q'
    sh 'bundle exec rubocop app config lib spec'
    sh 'bundle exec reek app lib public spec tmp'
    sh 'bundle exec rails_best_practices .'
    
    
 
 
