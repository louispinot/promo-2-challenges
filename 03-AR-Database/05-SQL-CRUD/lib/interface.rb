require_relative "crud"
require 'Date'

def ask_and_get(param)
  puts "What is the #{param} for your post?"
  gets.chomp
end

db_path = "db/news.sqlite"
db = SQLite3::Database.new(db_path)

create_scheme(db)

while true

  puts "Hey you, what do you want to do today? Enter <task_id>"
  puts "1. Create a post"
  puts "2. Read all your posts"
  puts "3. Read a post"
  puts "4. Delete all posts"
  puts "5. Delete a post"
  puts "6. Exit"

  # TODO: add other CRUD tasks if you wish!
	choice =  gets.chomp.to_i

	case choice
  when 1
    name = ask_and_get("name")
    source_url = ask_and_get("source url")
    rating = ask_and_get("rating")
    post = { name: name, source_url: source_url, date: Time.now.strftime('%Y-%m-%d %H:%M:%S'), rating: rating }
    create_post(db, post)
  when 2
    get_posts(db)
  when 3
    id = ask_and_get("id")
    get_post(db, id)
  when 4
    delete_posts(db)
  when 5
    id = ask_and_get("id")
    delete_post(db, id)
  when 6
    break
	end

end