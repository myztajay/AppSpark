# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Skill.destroy_all
User.destroy_all
App.destroy_all

Skill.create(skill: "Javascript")
Skill.create(skill: "Ruby")
Skill.create(skill: "Python")
Skill.create(skill: "Java")
Skill.create(skill: "C++")
Skill.create(skill: "Assembly")
Skill.create(skill: "Ember")
Skill.create(skill: "Angularjs")
Skill.create(skill: "Nodejs")
Skill.create(skill: "Reactjs")

User.create(email: "rafael@gmail.com", password: "topsecret", password_confirmation: "topsecret")
User.create(email: "scott@gmail.com", password: "topsecret", password_confirmation: "topsecret")
User.create(email: "elsie@gmail.com", password: "topsecret", password_confirmation: "topsecret")
User.create(email: "sandy@gmail.com", password: "topsecret", password_confirmation: "topsecret")
User.create(email: "jessy@gmail.com", password: "topsecret", password_confirmation: "topsecret")
User.create(email: "anusone@gmail.com", password: "topsecret", password_confirmation: "topsecret")
User.create(email: "ara@gmail.com", password: "topsecret", password_confirmation: "topsecret")
User.create(email: "eric@gmail.com", password: "topsecret", password_confirmation: "topsecret")
User.create(email: "matt@gmail.com", password: "topsecret", password_confirmation: "topsecret")

App.create(name: "appspark", description: "An app that allows developer and entreprenuers to post apps that they would like to create. In addition to a scope of work. They would also be able to post requirements and progress via the github API", requirements: "Ruby on Rails Reactjs Html/Css", developers_needed: 5, user_id: 1)

App.create(name: "Map your snap", description: "An app that allows a person to make online collection of snapchat photos, using geo-location to map where that particular photo was taken", requirements: "Angularjs Nodejs Javascript ", developers_needed: 8, user_id: 4)

App.create(name: "Last Hope", description: "Last hope is a 2D traditional style RPG game I have been plannig for two years. It would would be programmed in unity so C# is a must", requirements: "Unity C#", developers_needed: 3, user_id: 5)

App.create(name: "Food By Mood", description: "An app  that keep a running index of foods categorized by when you would like to eat them. for example fried chicken as comfort food", requirements: "Reactjs Nodejs", developers_needed: 4, user_id: 9)

App.create(name: "Coordinates", description: "An app uses geo-location to track where a haiku was created. The app would be used to geocache poems around local landmarks", requirements: "Reactjs Javascript Nodejs", developers_needed: 7, user_id: 5)

App.create(name: "Chapioms of Chess", description: "An app that find local chess player using geo-location to pair potential player based on skill and experience", requirements: "text", developers_needed: 7, user_id: 1)

App.create(name: "Funky Image", description: "Funky Image is an app that will allow the user to take hold of any image taken on their mobile device,and make changes to it in the same way someone is able to photoshop on a PC. slime down your figure, make it so you actually catch that ball, or turn your self into a 100ft tall person", requirements:"photoshop", developers_needed:2 , user_id:9 )

App.create(name: "D&D Now", description: "This App will allow fellow D&D player to find local shops and player who would like to take part in their begining or ongoing campain. app users can search users by experiance, number of player, or charecter and jobs  ", requirements:"Javascript geo-location"  , developers_needed:6 , user_id:2 )

App.create(name: "Right Now", description: "Right now is the newest hands free app, and the only hand free app you will ever need. Right now will do anything on your phone with simple commands. want your phone to open an app, just ask it to, turn a page on your ebook just ask it to, and wanna see the latest episode of your favorite show right now? well just say it right now", requirements:"Javascript" , developers_needed:6 , user_id:2 )

App.create(name: "appspark", description: "An app that allows developer and entreprenuers to post apps that they would like to create. In addition to a scope of work. They would also be able to post requirements and progress via the github API", requirements: "Ruby on Rails Reactjs Html/Css", developers_needed: 5, user_id: 1)

