# Main vending machine tests

describe 'Vending machine' do
  before(:all) do
    @test_product = ['Water', 2] # London Prices
    @test_data = 'data/test/products_test.json'
    
  end

  before(:each) do
    @vending_test = VendingMachine.new(@test_data)
  end

  context '#basics--' do
    it 'can start' do
      expect(@vending_test.output).to eq ''
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
      @vending_test.add_money(@test_product.last)
      expect(@vending_test.temp_amount).to eq @test_product.last
    end

    it 'can check it against a items price' do
      @vending_test.add_money(@test_product.last)
      @vending_test.check_item(@test_product.first)
      expect(@vending_test.output).to eq 'You receive a Water'
    end

    it 'can ask for the right amount of money' do
      @vending_test.add_money(1)
      @vending_test.check_item(@test_product.first)
      expect(@vending_test.output).to eq 'Error: you need 1 more to get a Water'
    end

    it 'can give an item and change if payed too much' do
      @vending_test.add_money(5)
      @vending_test.check_item(@test_product.first)
      expect(@vending_test.output).to eq 'You receive a Water and 3 in change'
    end

    it 'returns money regardless if right or wrong amount if wrong item selected' do
      @vending_test.add_money(5)
      @vending_test.check_item('Coffee')
      expect(@vending_test.output).to eq 'Error: Coffee not stocked! Returning money'
    end
  end
end
