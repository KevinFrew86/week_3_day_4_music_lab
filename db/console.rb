require ("pry")
require_relative('../models/artist.rb')
require_relative('../models/album.rb')

Album.delete_all()
Artist.delete_all()

artist1 = Artist.new(
  {
    'name' => 'Parquet Courts'
  }
)

artist1.save

artist2 = Artist.new(
  {
    'name' => 'Protomartyr'
  }
)

artist2.save

album1 = Album.new(
  {
    'title' => 'Wide Awake!',
    'genre' => 'Rock',
    'artist_id' => "#{artist1.id}"
  }
)

album1.save

album2 = Album.new(
  {
    'title' => 'Human Performance',
    'genre' => 'Rock',
    'artist_id' => "#{artist1.id}"
  }
)

album2.save

album3 = Album.new(
  {
    'title' => 'Relatives in Descent',
    'genre' => 'Post-punk',
    'artist_id' => "#{artist2.id}"
  }
)

album3.save

album4 = Album.new(
  {
    'title' => 'No Passion All Technique',
    'genre' => 'Post-punk',
    'artist_id' => "#{artist2.id}"
  }
)

album4.save

# album4.delete
# album2.genre = 'Post-punk'
# album2.update

# music = albums.find(20)
binding.pry
nil
