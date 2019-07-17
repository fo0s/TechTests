require 'json'

# Start of the main vending machine class

class VendingMachine
  attr_accessor :data_source
  attr_reader :output

  def initialize
    @data_source = ""
    @output = ""
  end

  def parse_json
    JSON.parse(File.read(@data_source))
  end

  def item_exists?(item)
    parse_json.key?(item)
  end
end