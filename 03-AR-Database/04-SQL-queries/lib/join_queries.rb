require 'sqlite3'

# opens the database
DATABASE_PATH = "db/jukebox.sqlite"
db = SQLite3::Database.new(DATABASE_PATH)

def detailed_tracks(db)
  db.execute("SELECT track.name, artist.name, album.title
              FROM track
              INNER JOIN Album
              ON track.AlbumId=Album.AlbumId
              INNER JOIN artist
              ON album.ArtistID=artist.ArtistID")
end

def stats_on(db, category)
  #TODO: For the given category of music, return the number of tracks and the average song length (as a stats hash)
  array = db.execute("SELECT Genre.Name, COUNT(Track.trackID) AS 'NB OF TRACKS', AVG(track.Milliseconds)/60000 as 'AVG LENGTH'
              FROM track
              INNER JOIN genre
              ON track.genreID=genre.genreID
              WHERE genre.name = '#{category}'")[0]
  category = {"number of songs" => array[1],
              "average length" => array[2].round(2)}
end

def top_five_rock_artists(db)
  #TODO: return list of top 5 rock artists
  db.execute("SELECT artist.name, COUNT(track.trackID) AS 'NB OF SONGS'
              FROM track
              INNER JOIN Album
              ON track.AlbumId=Album.AlbumId
              INNER JOIN artist
              ON album.ArtistID=artist.ArtistID
              INNER JOIN genre
              ON track.genreID=genre.genreID
              WHERE genre.name = 'Rock'
              GROUP BY artist.name
              ORDER BY COUNT(track.trackID) DESC
              LIMIT 5")


end

# p detailed_tracks(db)
# p stats_on(db, 'Jazz')
# p top_five_rock_artists(db)
