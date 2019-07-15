# Start of main roomba class
class Roomba
  attr_reader :room

  def initialize
    @room = []
  end

  def input_room(room)
    @room = room
  end
end