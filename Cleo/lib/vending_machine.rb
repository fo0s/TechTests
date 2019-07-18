require 'json'

# Start of the main vending machine class
class VendingMachine
  attr_accessor :data_source, :temp_amount
  attr_reader :output

  def initialize
    @data_source = ''
    @output = ''
    @temp_amount = 0
  end

  def check_item(item)
    _exists?(item) ? calculate_correct_amount(item) : @output = 'Error: Item not stocked!'
  end

  def calculate_correct_amount(item)
    item_price = parse_json[item].first

    @output = if _not_enough_money?(item_price)
                "Error: you need #{item_price - @temp_amount} more to get a #{item}"
              else
                item
              end
  end

  def _exists?(item)
    parse_json.key?(item)
  end

  :private

  def parse_json
    JSON.parse(File.read(@data_source))
  end

  def _not_enough_money?(amount)
    amount != @temp_amount
  end
end
