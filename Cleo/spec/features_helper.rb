# frozen_string_literal: true

def start_program
  @vending_machine = VendingMachine.new('data/test/products_test.json')
end

def insert_amount(amount)
  @vending_machine.add_money(amount)
end

def select_item(item)
  @vending_machine.check_item(item)
end

def read_output
  @vending_machine.output
end

def check_if_enough; end # redundant

def hire_maintenance_person
  @alex = MaintanancePerson.new
end

def get_maintenance_person
  @alex = MaintanancePerson.new
end

def get_warehouse_location
  @warehouse = 'data/test/test_warehouse.json'
end

def provide_products
  @alex.get_products(@warehouse)
end

def which_vending_machine
  @test_vending = 'data/test/products_test.json'
end

def stock_vending_machine
  @alex.stock_machine(@test_vending)
end

def machine_status
  'Fully stocked'
end

def add_change_to_machine
  @alex.stock_money(@test_vending)
end
