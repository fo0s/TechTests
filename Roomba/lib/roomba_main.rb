require_relative 'roomba_room_builder.rb'

# Start of main roomba class
class Roomba
  attr_accessor :room

  def initialize
    @room = []
  end
end