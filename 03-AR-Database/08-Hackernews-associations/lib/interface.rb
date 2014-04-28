require_relative 'config/application'
require_relative 'models/post'
require_relative 'models/user'
require_relative 'db/seed'



def ask_and_get(param)
  puts "What is the #{param} of your piece of news?"
  gets.chomp
end

while true

  logged_in = false

  until logged_in
    puts "Please login with your <id>"
    #TODO: instantiate a user with his <id>
    id = gets.chomp
    logged_in = true
    active_user = User.find(id)
  end


  puts "Hey you, what do you want to do today? Enter <task_id>"
  puts "1. Create a post"
  puts "2. Read all posts"
  puts "3. Read a post"
  puts "4. Delete all posts"
  puts "5. Delete a post"
  puts "6. see all users"
  puts "7. See all my posts"
  puts "8. Exit"

  choice =  gets.chomp.to_i

  case choice
  when 1
    name = ask_and_get("name")
    source_url = ask_and_get("source url")
    rating = ask_and_get("rating")
    post = { name: name, source_url: source_url, date: Time.now, rating: rating }
    #TODO: use ActiveRecord to add a new entry to the DB
    Post.create(name: post[:name], date: post[:date], source_url: post[:source_url], rating: post[:rating])
  when 2
    #TODO: use ActiveRecord to get all entries from the DB
    # puts Post.all
    puts Post.all.each {|post| post = post.to_s}

  when 3
    id = ask_and_get("id")
    puts Post.find(id.to_i).to_s

  when 4
    #TODO: use ActiveRecord to delete all entries from the DB
    Post.all.destroy
  when 5
    id = ask_and_get("id")
    Post.find(id.to_i).destroy
  when 6
    puts User.all.each {|user| user = user.to_s}
  when 7
    puts Post.where(id: active_user.id).each {|post| post = post.to_s}
  when 8
    break
  end

end