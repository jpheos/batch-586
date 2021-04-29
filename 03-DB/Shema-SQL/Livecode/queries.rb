require "sqlite3"
db = SQLite3::Database.new("chinook.sqlite")


# query = <<-SQL
# SELECT first_name, email FROM customers
# ORDER BY first_name
# SQL

# query = <<-SQL
# SELECT tracks.name, composer FROM tracks
# JOIN playlist_tracks ON playlist_tracks.track_id = tracks.id
# JOIN playlists ON playlists.id = playlist_tracks.playlist_id
# WHERE playlists.name = "Classical"
# SQL

# query = <<-SQL
# SELECT COUNT(*) AS occurrences, artists.name from artists
# JOIN albums ON albums.artist_id = artists.id
# JOIN tracks ON tracks.album_id = albums.id
# JOIN playlist_tracks ON playlist_tracks.track_id = tracks.id
# GROUP BY artists.name
# ORDER BY occurrences DESC
# LIMIT 10
# SQL


query = <<-SQL
SELECT COUNT(*) AS occurences, tracks.name FROM tracks
JOIN invoice_lines ON invoice_lines.track_id = tracks.id
GROUP BY tracks.id
HAVING occurences >= 2
SQL

results = db.execute(query)

p results