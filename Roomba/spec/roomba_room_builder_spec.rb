require 'roomba_room_builder'

describe 'Room builder' do
  before(:each) do
    @room = RoomBuilder.new
    @room.build_room(5, 5, 0)
  end

  context '#basics-- ' do
    it 'can start and hold an output value' do
      expect(@room.output).to_not eq []
    end
  end

  context '#room structure-- ' do
    it 'starts with the walls' do
      expect(@room.output.first).to eq ['x', 'x', 'x', 'x', 'x', 'x', 'x']
    end

    it 'ends with the walls' do
      expect(@room.output.last).to eq ['x', 'x', 'x', 'x', 'x', 'x', 'x']
    end

    it 'is surrounded with walls' do
      expect(@room.output[2]).to include '*'
    end

    it 'is the right size' do
      expect(@room.output.count).to eq 7
    end

    it 'randomly places obstructions in the room' do
      @room.build_room(5, 5, 2)
      expect(@room.obstructions_used).to eq true
    end
  end

  # Expect build_room(5, 5) function to create a room;
  # ['x', 'x', 'x', 'x', 'x', 'x', 'x']
  # ['x', '*', '*', '*', '*', '*', 'x']
  # ['x', '*', '*', '*', '*', '*', 'x']
  # ['x', '*', '*', '*', '*', '*', 'x']
  # ['x', '*', '*', '*', '*', '*', 'x']
  # ['x', '*', '*', '*', '*', '*', 'x']
  # ['x', 'x', 'x', 'x', 'x', 'x', 'x']

end