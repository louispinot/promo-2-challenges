require 'sqlite3'

# opens the database
DATABASE_PATH = "db/jukebox.sqlite"
db = SQLite3::Database.new(DATABASE_PATH)

def number_of_rows(db, table_name)
  #TODO: count number of rows in table table_name
  db.execute("SELECT COUNT(#{table_name}Id) FROM #{table_name}")[0][0]
end

def sorted_artists(db)
  #TODO: return array of artists' names sorted alphabetically
  array = db.execute("SELECT Name FROM Artist ORDER BY Name")
  array.map! {|item| item[0]}
end

def love_tracks(db)
  #TODO: return array of love songs
  array = db.execute("SELECT Name FROM Track WHERE Name LIKE '%love%'")
  array.map! {|item| item[0]}
end

def long_tracks(db, min_length)
  #TODO: return tracks verifying: duration > min_length (minutes)
  #db.execute("SELECT Name, Milliseconds/60000.0 AS Minutes FROM Track WHERE Milliseconds/60000 > #{min_length}")
  array = db.execute("SELECT Name FROM Track WHERE Milliseconds/60000 > #{min_length}")
  array.map! {|item| item[0]}
end

# p number_of_rows(db, 'artist')
# p sorted_artists(db)
# p love_tracks(db)
# p long_tracks(db, 9)