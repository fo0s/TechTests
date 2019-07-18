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
    create_output(_enough_money?(item_price), item_price, item)
  end

  def create_output(cond, item_price, item)
    if cond != :not_enough
      @output = "You receive a #{item}"
      @output += " and #{temp_amount - item_price} in change" if cond == :too_much
      @temp_amount = 0
    else
      @output = "Error: you need #{item_price - @temp_amount} more to get a #{item}"
    end
  end


  def _exists?(item)
    parse_json.key?(item)
  end

  :private

  def parse_json
    JSON.parse(File.read(@data_source))
  end

  def _enough_money?(amount)
    case
    when amount > @temp_amount
      :not_enough
    when amount < @temp_amount
      :too_much
    else
      :just_right # ;p
    end
  end
end
