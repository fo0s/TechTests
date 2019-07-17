# Main vending machine tests

describe 'Vending machine' do
  before(:all) { @test_data = 'data/products_test.json' }
  before(:each) { @vending_test = VendingMachine.new }

  context '#basics--' do
    it 'can start' do
      expect(@vending_test.output).to eq ""
    end

    it 'can store a data source' do
      expect(@vending_test.data_source=(@test_data)).to eq @test_data
    end

    it 'can read a json file' do
      @vending_test.data_source=(@test_data)
      expect(@vending_test.item_exists?('Water')).to eq true
    end
  end
end
