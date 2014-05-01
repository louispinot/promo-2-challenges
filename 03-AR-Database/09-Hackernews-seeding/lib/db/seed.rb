require_relative "../config/application"
require_relative "../models/post"
require_relative "../models/user"
require 'open-uri'
require 'nokogiri'

# Seed you database with post data from hacker news
# And fake users using Faker gem

puts "Seeding database..."

#TODO: Your code goes here
# 1. create fake users

100.times do
  name = Faker::Name.name
  email = Faker::Internet.email
  User.create(name: name, email: email)
end


# 2. Scrape news from https://news.ycombinator.com/ and associate posts to your existing users

def time_rand from = 0.0, to = Time.now
  time = Time.at(from + rand * (to.to_f - from.to_f))
  time = time.strftime("%Y/%m/%d %H:%M:%S")
  time
end

def user_rand
  rand(User.count)
end


html_file = open("https://news.ycombinator.com/")
html_doc = Nokogiri::HTML(html_file)

html_doc.search('td.title:nth-child(3) > a').each do |element|
  name = element.inner_text.strip
  source_url = element['href']
  #Post.create(name: name, source_url: source_url)

  note_tr = element.parent.parent.next_sibling
  if note_tr
    note_span = note_tr.search('td.subtext > span').first
    note = note_span.nil? ? 0 : note_span.inner_text.to_i

    Post.create(name: name, source_url: source_url, rating: note, date: time_rand, user_id: user_rand)
  end

end


# i = 1
# html_doc.search('td.subtext > span').each do |element|
#   points = element.inner_text.to_i
#   post = Post.find(i)
#   post.rating = points
#   i +=1
# end

# def time_rand from = 0.0, to = Time.now
#   time = Time.at(from + rand * (to.to_f - from.to_f))
#   time = time.strftime("%Y/%m/%d %H:%M:%S")
#   time
# end

# Post.all.each {|post| post.date = time_rand}

# def user_rand
#   rand(User.count)
# end

# Post.all.each {|post| post.user_id = user_rand}


# <tr>
#   <td align=right valign=top class="title">3.</td>
#   <td>
#     <center>
#     <a id=up_7659726 href="vote?for=7659726&amp;dir=up&amp;whence=%6e%65%77%73">
#     <div class="votearrow" title="upvote"></div></a>
#     <span id=down_7659726></span></center>
#   </td>
#   <td class="title">
#     <a href="http://www.wired.com/2014/04/self-washing-car/">
#     RIP, Car Washes: See Nissan’s New Self-Cleaning Paint in Action
#     </a>
#     <span class="comhead"> (wired.com) </span>
#   </td>
# </tr>
# <tr>
#   <td colspan=2>
#   </td>
#   <td class="subtext"><span id=score_7659726>18 points</span> by <a href="user?id=relampago">relampago</a> 1 hour ago  | <a href="item?id=7659726">16 comments</a>
#   </td>
# </tr>
# <tr style="height:5px">
# </tr>




