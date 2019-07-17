# Main vending machine tests

describe 'Vending machine' do
  before(:all) do
    @test_product = ['Water', 1.5]
    @test_data = 'data/products_test.json'
  end

    before(:each) do
    @vending_test = VendingMachine.new
    @vending_test.data_source=(@test_data)
  end

  context '#basics--' do
    it 'can start' do
      expect(@vending_test.output).to eq ""
    end

    it 'can store a data source' do
      expect(@vending_test.data_source).to eq @test_data
    end

    it 'can read a json file' do
      expect(@vending_test._exists?(@test_product.first)).to eq true
    end
  end

  context '#money-- ' do
    it 'can take my money' do
      @vending_test.temp_amount+=(@test_product.last)
      expect(@vending_test.temp_amount).to eq @test_product.last
    end

    it 'can check it against a items price' do
      @vending_test.temp_amount+=(@test_product.last)
      @vending_test.check_item(@test_product.first)
      expect(@vending_test.output).to eq 'Water'
    end
  end
end
