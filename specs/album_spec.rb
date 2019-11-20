require('minitest/autorun')
require('minitest/reporters')
require_relative('../models/album.rb')

Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

class AlbumTest < MiniTest::Test

  def test_can_create_new_album()
    album_details = {
      'title' => 'Black Seeds of Vengeance',
      'genre' => 'Death Metal'
    }


  new_album = Album.new(album_details)
  assert_equal('Death Metal', new_album.genre)
  end

end
