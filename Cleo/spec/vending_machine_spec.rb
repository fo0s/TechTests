# Main vending machine tests

describe 'Vending machine' do
  before(:each) { @vending_test = VendingMachine.new }

  context '#basics--' do
    it 'can start' do
      expect(@vending_test.output).to eq ""
    end
  end
end
