class Guest

  attr_reader :name, :song, :wallet

  def initialize (name, favourite_song, wallet)
    @name = name
    @song = song
    @wallet = wallet
  end

  def create_guest(room_number)
  end

  def test_buy_room__wallet_decreased(amount)
    return if @wallet - amount < 0
    @wallet -= amount
  end
end
