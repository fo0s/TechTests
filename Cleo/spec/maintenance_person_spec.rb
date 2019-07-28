# frozen_string_literal: true

describe 'Maintanance person' do
  before(:all) do
    @warehouse_location = 'data/test/test_warehouse.json'
    @vending_machine = 'data/test/products_test.json'
    @test_product = ['Water', 2]
  end

  before(:each) do
    @alex = MaintanancePerson.new
    @machine = VendingMachine.new(@vending_machine)
  end

  context '#stock--' do
    it 'starts with nothing' do
      expect(@alex.products).to eq nil
    end

    it 'can get a list of products from the warehouse' do
      @alex.get_products(@warehouse_location)
      expect(@alex.products.first).to eq 'Water'
    end

    it 'can stock the vending machine with current stock' do
      @alex.get_products(@warehouse_location)
      @alex.stock_machine(@vending_machine)

      @machine.add_money(@test_product.last)
      @machine.check_item(@test_product.first)

      expect(@machine.output).to eq 'You receive a Water'
    end

    it 'can stock the vending machine with current stock' do
      @alex.get_products(@warehouse_location)
      @alex.stock_machine(@vending_machine)

      @machine.add_money(1)
      @machine.check_item('Kit Kat')

      expect(@machine.output).to eq 'You receive a Kit Kat'
    end
  end
end
