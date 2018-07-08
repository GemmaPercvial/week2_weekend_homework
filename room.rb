require_relative('song.rb')

class Room

  attr_reader :till, :guest, :song

  def initialize(room_number, price)
    @room_number = room_number
    @till = 1000.0
    @number_of_guests = 0
    @number_of_rooms_avalible = 5
    @number_of_songs = 0
  end

  def check_in_wallet_decreased(guest)
    return false if @total == 0
    @guests << guest
    @number_of_guests -= 1
    return true
  end

  def check_out_room_avalible(guest)
      for each_guest in @guests
        if each_guest.name == guest_name
          @guests.delete(each_guest)
          return true
        end
      end
      return false
  end

  def create_room(room_number)
    @number_of_rooms_avalible << @room1
  end

  def add_song(song)
    @number_of_songs << @song1
  end

end
