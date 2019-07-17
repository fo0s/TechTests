# Start of the main vending machine class

class VendingMachine
  attr_accessor :data_source
  attr_reader :output

  def initialize
    @data_source = ""
    @output = ""
  end
end