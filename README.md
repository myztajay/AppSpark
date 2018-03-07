# AppSpark 
#Live Demo: [AppSpark Live Link](https://appspark.herokuapp.com/)

![alt text](http://www.rafaelfernandez.me/img/appspark.png "Logo Title Text 1")

AppSpark is a platform where users with a startup idea can post, collaborate and gather a team. Appspark functions similarly to crowd funding site-Kickstarter, but rather than gathering financial contributions, gathers commitments from programmers, web designers and other technical professionals to build a prototype. Users can set parameters for the apps they want to create by including;  team size, desired skillsets , tags, photos, descriptions and can even link a Github repository to showcase the progress of the app. If you've ever had an idea, but didn't have a team or the technical skill to execute the idea Appspark can help. In the spirit of the open source community, it brings together visionaries and talented individuals to bring an idea to life.

This project was a 7 day sprint as part of a project for a General Assembly course I attended. Since then I have been gradually updating it and adding features and functionality.

# Install
1. Download the repo
2. Make sure ruby, rails and postgres is installed.
3. setup a  amazon bucket at https://docs.aws.amazon.com/AmazonS3/latest/gsg/CreatingABucket.html
4. setup your envirionmental variables. Refile(image processing) is currently set to store in an AWS bucket for example. 

AWS = {
  access_key_id: ENV["AWS_ID"] ,
  secret_access_key: ENV["AWS_KEY"] ,
  region: "us-east-1",
  bucket: "appspark"
}
Just make sure that your name your variables AWS_ID and AWS_KEY

5. In your console run ```bundle install``` to install gems/packages
6. Then run ```rake db:create db:migrate db:seed``` Seed data has been provided
7. Then to start the rails server type ```rails s``` into the console.


# Notes
1. In order to use the "add a repo" feature and authenticate with github, you need a free developer key from github and need to reference it. in app/config/initializers/omniauth.rb 


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
* Postgres
* Javascript
* Jquery
* AWS


