# The machine should take an initial load of products
# and change. The change will be of denominations
# 1p, 2p, 5p, 10p, 20p, 50p, £1, £2

feature 'A maintenance person; ' do
  scenario 'They should be able to fill a vending machine with a range of products' do
    hire_maintenance_person

    get_warehouse_location
    provide_products

    which_vending_machine
    stock_vending_machine

    expect(machine_status).to eq 'Fully stocked'
  end

  scenario 'They should be able to fill a vending machine with small change' do
    get_maintenance_person

    get_warehouse_location
    provide_products

    which_vending_machine
    stock_vending_machine

    # add_change_to_machine

    expect(machine_status).to eq 'Fully stocked'
  end
end
