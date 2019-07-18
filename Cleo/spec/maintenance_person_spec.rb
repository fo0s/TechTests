describe 'Maintanance person' do
  before(:all) do
     @warehouse_location = 'data/warehouse.json'
     @vending_machine = 'data/products_test.json'
  end
  before(:each) { @alex = MaintanancePerson.new }

  context '#stock--' do
    it 'starts with nothing' do
      expect(@alex.products).to eq nil
    end

    it 'can get a list of products from the warehouse' do
      @alex.get_products(@warehouse_location)
      expect(@alex.products.first).to eq 'Water'
    end
  end
end