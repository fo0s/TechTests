require 'json'

# Start of the main vending machine class
class VendingMachine
  attr_reader :output, :need_topping_up, :data_source, :temp_amount

  def initialize(data_source)
    @data_source = data_source
    @output = ''
    @temp_amount = 0
    @need_topping_up = []
  end

  def add_money(amount)
    @temp_amount += amount
  end

  def check_item(item)
    _exists?(item) ? calculate_correct_amount(item) : create_output(2, 0, item)
  end

  def calculate_correct_amount(item)
    item_price = parse_json[item].first
    create_output(_enough_money?(item_price), item_price, item)
  end

  def create_output(cond, item_price, item)
    if cond == 1 or cond == 0
      @output = "You receive a #{item}"
      @output += " and #{temp_amount - item_price} in change" if cond == 1
      @temp_amount = 0

    elsif cond == 2
      @output = "Error: #{item} not stocked! Returning money"
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
    @temp_amount <=> amount
  end
end
