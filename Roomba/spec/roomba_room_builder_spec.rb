require 'roomba_room_builder'

describe 'Room builder' do
  before(:each) do
    @room = RoomBuilder.new
  end

  context '#basics-- ' do
    it 'can start and hold an output value' do
      expect(@room.output).to eq []
    end
  end

end