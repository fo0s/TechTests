require 'roomba_sensors'

describe 'Roomba sensors' do
  before(:all) { @sensor = RoombaSensor.new }
  context '#basics--' do
    it 'can start' do
      expect(@sensor.active).to eq false
    end
  end

end