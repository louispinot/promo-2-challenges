require 'sqlite3'

# Write an interactive program that can create, update, read and delete posts.

# - complete the methods in `crud.rb` with the relevant queries to perform CRUD actions on the DB
# - **optional**: add optional tasks in the interface, to allow the user for other CRUD actions (e.g. update/delete/read a single post)

# At least your program should have these tasks:

# Hey you, what do you want to do ?
# 1. add a piece of news.
# 2. delete all news.
# 3. read my news.

def create_scheme(db)
  #TODO: create your db scheme
  sql = %q{
-- ---
-- Globals
-- ---

-- SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
-- SET FOREIGN_KEY_CHECKS=0;

-- ---
-- Table 'articles'
--
-- ---

DROP TABLE IF EXISTS `articles`;

CREATE TABLE `articles` (
  `id` INTEGER NULL DEFAULT NULL,
  `title` VARCHAR NULL DEFAULT NULL,
  `rating` INTEGER NULL DEFAULT NULL,
  `source_url` VARCHAR NULL DEFAULT NULL,
  `date` DATETIME NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
);

-- ---
-- Foreign Keys
-- ---


-- ---
-- Table Properties
-- ---

-- ALTER TABLE `articles` ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ---
-- Test Data
-- ---

-- INSERT INTO `articles` (`id`,`title`,`rating`,`source_url`,`date`) VALUES
-- ('','','','','');
  }  # %q allows for multiline string in ruby
  db.execute(sql)
end

def create_post(db, post)
  #TODO: add a new post to your db
  db.execute("INSERT INTO articles (title,rating,source_url,date)
              VALUES ('#{post[:name]}',#{post[:rating]},'#{post[:source_url]}','#{post[:date]}')")
end

def get_posts(db)
   #TODO: list all posts
   array_results = db.execute("SELECT title, source_url, date, rating FROM articles")
   hash_results = []
   array_results.each do |array|
    post = { name: array[0], source_url: array[1], date: array[2], rating: array[3] }
    hash_result << post
  end
  hash_result
end

def get_post(db, id)
  #TODO: get a specific post
  array = db.execute("SELECT title, source_url, date, rating FROM articles WHERE id = '#{id}'")
  post = { name: array[0], source_url: array[1], date: array[2], rating: array[3] }
end

def update_post(db, id, name)
	#TODO: update a post's name in your db
  db.execute("UPDATE articles
              SET title='#{name}'
              WHERE id='#{id}'")
              ## /!\ si tu mets pas de WHERE, tu ecrases le nom de TOUS LES POSTS /!\ ##
end

def delete_posts(db)
  #TODO: delete a post in your db
  db.execute("DELETE * FROM articles")
end

def delete_post(db, id)
  #TODO: delete a specific post in your db
  db.execute("DELETE FROM articles
              WHERE id='#{id}'")
end



