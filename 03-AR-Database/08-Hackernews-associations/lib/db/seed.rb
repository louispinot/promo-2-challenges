require_relative '../models/post'
require_relative '../models/user'
require 'faker'

# Seed you database with users
puts "Seeding database..."

100.times do
  name = Faker::Name.name
  email = Faker::Internet.email
  User.create(name: name, email: email)
end

# # Seed your DB with articles
# 500.times do
#   name = Faker::Name.name
#   email = Faker::Internet.email
#   User.create(name: name, email: email)
# end

# for each user, pick randomly one ingredient or more from the list of ingredients and attach recipes to the user