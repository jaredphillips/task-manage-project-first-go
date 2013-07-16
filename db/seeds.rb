# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.destroy_all
Project.destroy_all

user = User.create!(first_name: "Terry", last_name: "Phillips", email: "terry@email.com", password: "password")

project1 = user.projects.create!(title: "Project 1", objective: "Teaser text 1", completed: false, user_id: user.id)

project2 = user.projects.create!(title: "Project 2", objective: "Teaser text 2", completed: true, user_id: user.id)

project3 = user.projects.create!(title: "Project 3", objective: "Teaser text 3", completed: true, user_id: user.id)