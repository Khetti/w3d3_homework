require('pry')
require_relative('models/album')
require_relative('models/artist')
Album.delete_all()
Artist.delete_all()

  artist1 = Artist.new(
    {
      'name' => "Leprous"
    }
  )
  artist1.save()

  artist2 = Artist.new(
    {
      'name' => "Nile"
    }
  )
  artist2.save()

  album1 = Album.new(
    {
      'title' => "Pitfalls",
      'genre' => "Progressive Metal",
      'artist_id' => artist1.id
    }
  )
  album1.save()

  album2 = Album.new(
    {
      'title' => "Malina",
      'genre' => "Progressive Metal",
      'artist_id' => artist1.id
    }
  )
  album2.save()

  album3 = Album.new(
    {
      'title' => "The Congregation",
      'genre' => "Progressive Metal",
      'artist_id' => artist1.id
    }
  )
  album3.save()

  album4 = Album.new(
    {
      'title' => "Coal",
      'genre' => "Avant Garde/Progressive Black Metal",
      'artist_id' => artist1.id
    }
  )
  album4.save()

  album5 = Album.new(
    {
      'title' => "Bilateral",
      'genre' => "Avant Garde/Progressive Metal",
      'artist_id' => artist1.id
    }
  )
  album5.save()

  album6 = Album.new(
    {
      'title' => "Tall Poppy Syndrome",
      'genre' => "Progressive Black Metal",
      'artist_id' => artist1.id
    }
  )
  album6.save()

  album7 = Album.new(
    {
      'title' => "Vile Nilotic Rites",
      'genre' => "Death Metal",
      'artist_id' => artist2.id
    }
  )
  album7.save()

  album8 = Album.new(
    {
      'title' => "What Should Not Be Unearthed",
      'genre' => "Death Metal",
      'artist_id' => artist2.id
    }
  )
  album8.save()

  album9 = Album.new(
    {
      'title' => "At the Gate of Sethu",
      'genre' => "Death Metal",
      'artist_id' => artist2.id
    }
  )
  album9.save()

  album10 = Album.new(
    {
      'title' => "Those Whom the Gods Detest",
      'genre' => "Death Metal",
      'artist_id' => artist2.id
    }
  )
  album10.save()

  album11 = Album.new(
    {
      'title' => "Ithyphallic",
      'genre' => "Death Metal",
      'artist_id' => artist2.id
    }
  )
  album11.save()

  album12 = Album.new(
    {
      'title' => "Annihilation of the Wicked",
      'genre' => "Death Metal",
      'artist_id' => artist2.id
    }
  )
  album12.save()

  album13 = Album.new(
    {
      'title' => "In Their Darkened Shrines",
      'genre' => "Death Metal",
      'artist_id' => artist2.id
    }
  )
  album13.save()

  album14 = Album.new(
    {
      'title' => "Black Seeds of Vengeance",
      'genre' => "Death Metal",
      'artist_id' => artist2.id
    }
  )
  album14.save()

  album15 = Album.new(
    {
      'title' => "Amongst the Catacombs of Nephren-Ka",
      'genre' => "Death Metal",
      'artist_id' => artist2.id
    }
  )
  album15.save()

  binding.pry
  nil
