# Venmo API
This API was built to support a payment between friends.

# Endpoints


POST  /api/v1/users/{user_id}/payments (generate friends payments)

![image](https://user-images.githubusercontent.com/53717512/150615103-4d76c006-4515-47e9-939a-ff71aeeb3b67.png)


Get  /api/v1/users/{user_id}/feed?page=1 (get feed from user and friends)

![image](https://user-images.githubusercontent.com/53717512/150615370-cde09eb5-b9e7-40b1-9923-92a73ef1ebed.png)


Get  /api/v1/users/{user_id}/balance (get de balances of de user account)

![image](https://user-images.githubusercontent.com/53717512/150615425-52b96199-dda0-4439-b845-880e3ad436f1.png)


Get  /api/v1/users (List users with all friends)

![image](https://user-images.githubusercontent.com/53717512/150615484-b0290b8a-ba06-406b-810b-0c8871af8397.png)

# CODE QUALITY
 
 I have added some linters and code quality tools that I usually use:
 
    sh 'bundle exec brakeman . -z -q'
    sh 'bundle exec rubocop app config lib spec'
    sh 'bundle exec reek app lib public spec tmp'
    sh 'bundle exec rails_best_practices .'
    
    
 
 
