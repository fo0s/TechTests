# Start of the room builder class
class RoomBuilder
  attr_reader :output, :obstructions_used

  def initialize
    @output = []
    @obstructions_used = false
    @docking_station = false
  end

  def build_room(x, y, o = 0)
    # Room will be 'x' long, +2 to factor in the walls
    outer_wall = Array.new((x + 2), 'x')
    obstructions_left = o

    @output << outer_wall

    y.times do
      temp_inner_wall = Array.new(y)
      inner_wall = temp_inner_wall.map do |spot|

        if @docking_station == false
          @docking_station = true
          'D'
        elsif rand(1..15) > 12 && obstructions_left != 0
          obstructions_left -= 1
          'O'
        else
          '*'
        end

      end

      inner_wall.unshift('x').push('x')
      @output << inner_wall
    end

    # The last wall
    @output << outer_wall

    # To check if all conditions were met
    @obstructions_used = true if obstructions_left == 0
  end
end