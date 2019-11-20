require_relative('../db/sql_runner.rb')
require_relative('artist.rb')

class Album

  attr_accessor :title, :genre
  attr_reader :id, :artist_id

    def initialize(details)
      @id = details['id'].to_i() if details['id']
      @title = details['title']
      @genre = details['genre']
      @artist_id = details['artist_id'].to_i()
    end

    def save()
      sql = "INSERT INTO albums
      (title, genre, artist_id)
      VALUES ($1, $2, $3) RETURNING id;"
      values = [@title, @genre, @artist_id]
      result = SqlRunner.run(sql, values)
      @id = result[0]['id'].to_i()
    end

    def Album.delete_all()
      sql = "DELETE FROM albums;"
      SqlRunner.run(sql)
    end

    def Album.all()
      sql = "SELECT * FROM albums;"
      albums = SqlRunner.run(sql)
      return albums.map{|album| Album.new(album)}
    end

    def update()
      sql = "UPDATE albums SET
      (title, genre) = ($1, $2)
      WHERE id = $3;"
      values = [@title, @genre]
      SqlRunner.run(sql, values)
    end

    def delete()
      sql = "DELETE FROM albums WHERE id = $1;"
      values = [@id]
      SqlRunner.run(sql, values)
    end

    def find_album()
      sql = "SELECT * FROM album WHERE id = $1;"
      values = [@album_id]
      artist = SqlRunner.run(sql, values)[0]
      return Album.new(album)
    end

end
