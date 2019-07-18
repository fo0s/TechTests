def start_program
  @vending_machine = VendingMachine.new
  @vending_machine.data_source = 'data/products_test.json'
end

def insert_amount(amount)
  @vending_machine.temp_amount = +amount
end

def select_item(item)
  @vending_machine.check_item(item)
end

def read_output
  @vending_machine.output
end

def check_if_enough; end
