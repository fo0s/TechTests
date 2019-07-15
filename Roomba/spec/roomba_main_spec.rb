require 'roomba_main'

describe 'Roomba main' do
  before(:each) do
     @zoom = Roomba.new
     @basic_test_room = ['r', 'o', 'o', 'm']
  end

  context '#basics-- ' do
    it 'can start up' do
      expect(@zoom.room).to eq []
    end

    it 'can be given a room' do
      @zoom.input_room(@basic_test_room)
      expect(@zoom.room).to eq ['r', 'o', 'o', 'm']
    end
  end
end