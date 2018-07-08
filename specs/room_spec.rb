require('minitest/autorun')
require('minitest/rg')
require_relative('../room.rb')
require_relative('../guests.rb')
require_relative('../song.rb')

class RoomTest < MiniTest::Test

  def setup()
    @song1 = Song.new("Rolling in the Deep", "Adele"),
    @song2 = Song.new("Valerie", "Amy Winehouse"),
    @song3 = Song.new("Mr Brightside", "The Killers"),
    @song4 = Song.new("Happy", "Pharrell Williams"),
    @guest1 = Guest.new("John", "Valerie", 100),
    @guest2 = Guest.new("Mary", "Rolling in the Deep", 400),
    @guest3 = Guest.new("Noah", "Mr Brightside", 50),
    @guest4 = Guest.new("Liz", "Happy", 325),
    @room = Room.new("Room One", 10)
  end

  def test_check_in_wallet_decreased
    assert_equal(1, @number_of_guests.count)
  end

  def test_check_out_room_avalible
    assert_equal(0, @number_of_guests)
  end

  def test_can_create_room
    assert_equal(6, @room1)
  end

  def test_add_song
    assert_equal(1, @song1)
  end

end
