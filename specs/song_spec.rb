require('minitest/autorun')
require('minitest/rg')
require_relative('../song.rb')

class SongTest < MiniTest::Test

  def setup(song_name, artist)
    @song1 = Song.new("Rolling in the Deep", "Adele"),
    @song2 = Song.new("Valerie", "Amy Winehouse"),
    @song3 = Song.new("Mr Brightside", "The Killers"),
    @song4 = Song.new("Happy", "Pharrell Williams")
  end

  def test_song_has_name
    assert_equal("Rolling in the Deep", @song1.name)
  end

  def test_song_has_artist
    assert_equal("Adele", @song1.artist)
  end


end
