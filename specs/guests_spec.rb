require('minitest/autorun')
require('minitest/rg')
require_relative('../guests.rb')

class GuestTest < MiniTest::Test

  def setup(name, song, wallet)
    @guest1 = Guest.new("John", "Valerie", 100),
    @guest2 = Guest.new("Mary", "Rolling in the Deep", 400),
    @guest3 = Guest.new("Noah", "Mr Brightside", 50),
    @guest4 = Guest.new("Liz", "Happy", 325)
  end

  def test_buy_room
    @guest1.pay_for_room(10)
    actual = @guest1.wallet
    assert_equal(90, actual)
  end

end
