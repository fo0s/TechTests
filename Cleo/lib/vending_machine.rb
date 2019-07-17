require 'json'

# Start of the main vending machine class
class VendingMachine
  attr_accessor :data_source, :temp_amount
  attr_reader :output

  def initialize
    @data_source = ""
    @output = ""
    @temp_amount = 0
  end

  def _exists?(item)
    parse_json.key?(item)
  end

  def check_item(item)
    if _exists?(item) and _enough_money?(parse_json[item].first)
      @output = item
    else
      @output = 'Error!'
    end
  end


  :private

  def parse_json
    JSON.parse(File.read(@data_source))
  end

  def _enough_money?(amount)
    amount == @temp_amount
  end

end