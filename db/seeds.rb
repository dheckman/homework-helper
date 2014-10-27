require 'faker'

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Problem.delete_all
40.times do
Problem.create!([{title: Faker::Hacker.noun, user_id: 1, 
                  text: Faker::Hacker.say_something_smart, 
                  tried: Faker::App.name}])
end