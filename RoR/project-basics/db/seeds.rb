# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


50.times do
  name = Faker::Name.name
  url = "http://i.imgur.com/J0LMopm.jpg"
  description = Faker::Lorem.paragraphs(paragraph_count = 3, supplemental = false).join

  User.create(
    name: name,
    picture_url: url,
    description: description
  )
end