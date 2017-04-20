# AppSpark 
Live Demo: [AppSpark Live Link](https://appspark.herokuapp.com/)

A Kick Starter-esc app, to help find developers to work on a project. User projects, request developers, enterscope of work, and much more. This project was also a 7 week sprint and uses complex join tables to map relationships, many assorted gem to add functionality, and utilized the github API.

# Important Notes
1. Currently my live in link above is having CDN issues I am working on resolving, they dont affect app performance but photos refuse to persist, meaning you upload and 20 minutes later the link is broken.
2. In order to use the "add a repo" feature and authenticate with github, you need a free developer key from github and need to reference it. in app/config/initializers/omniauth.rb 

# Technologies: 
* Html Css
* Boostrap
* Ruby
* Rails 
* refile
* Devise
* Oauth 
* Heroku
* CloudFront CDN
*  Postgres
* Javascript
* Jquery

# Install
1. 'bundle install'
2.  'rake db:create db:migrate db:seed'
3.  'rails s'

