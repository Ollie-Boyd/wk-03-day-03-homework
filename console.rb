require('pry')
require_relative('./models/artist')
require_relative('./models/album')

Album.delete_all
Artist.delete_all

katy = Artist.new({
    'name' => 'Katty Perry'
})

katy.save()

taylor = Artist.new({
    'name' => 'Taylor Swift'
})

taylor.save()

prism = Album.new({
    'title' => 'Prism',
    'genre' => 'pop',
    'artist_id' => katy.id
})

prism.save()

witness = Album.new({
    'title' => 'witness',
    'genre' => 'Electropop',
    'artist_id' => katy.id
})

witness.save()

fearless = Album.new({
    'title' => 'Fearless',
    'genre' => 'Country Pop',
    'artist_id' => taylor.id
})

fearless.save()

lover = Album.new({
    'title' => 'Lover',
    'genre' => 'Pop',
    'artist_id' => taylor.id
})

lover.save()

taylor.delete()

artists = Artist.all()

albums = Album.all()



binding.pry 

nil