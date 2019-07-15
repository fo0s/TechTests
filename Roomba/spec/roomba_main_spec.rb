require 'roomba_main'

describe 'Roomba main' do
  context '#basics-- ' do
    it 'can start up' do
      zoom = Roomba.new
      expect(zoom.room).to be []
    end
  end
end