def start_program
  @vending_machine = VendingMachine.new
  @vending_machine.data_source=("data/products_test.json")
end

def insert_amount(amount)
  @vending_machine.temp_amount=+amount
end

def select_item(item)
  @vending_machine.check_item(item)
end

def success
  "You receive a #{@vending_machine.output}" if !_is_output?
end

def failure
  
end

def _is_output?
  @vending_machine.output.empty?
end


