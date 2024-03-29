require_relative('../db/sql_runner.rb')
require_relative('album.rb')

class Artist

  attr_accessor :name
  attr_reader :id

  def initialize(details)
    @id = details['id'].to_i() if details['id']
    @name = details['name']
  end

  def save()
    sql = "INSERT INTO artists (name)
    VALUES ($1) RETURNING id;"
    values = [@name]
    result = SqlRunner.run(sql, values)
    @id = result[0]['id'].to_i()
  end

  def Artist.delete_all()
    sql = "DELETE FROM artists;"
    SqlRunner.run(sql)
  end

  def Artist.all()
    sql = "SELECT * FROM artists;"
    albums = SqlRunner.run(sql)
    return artists.map{|artist| Artist.new(artist)}
  end

  def update()
    sql = "UPDATE albums SET
    (name) = ($1)
    WHERE id = $2;"
    values = [@name]
    SqlRunner.run(sql, values)
  end

  def delete()
    sql = "DELETE FROM artists WHERE id = $1;"
    values = [@id]
    SqlRunner.run(sql, values)
  end

  def find_artists()
    sql = "SELECT * FROM artists WHERE id = $1;"
    values = [@id]
    albums = SqlRunner.run(sql, values)
    return albums.map{|artist| artist.new(artist)}
  end

end
