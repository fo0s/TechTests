# frozen_string_literal: true

# Once an item is selected and the appropriate amount
# of money is inserted, the vending machine should
# return the correct product

feature 'A working vending machine:' do
  # MVP
  scenario 'User can buy a product' do
    start_program

    insert_amount(2) # London prices
    select_item('Water')

    expect(read_output).to eq 'You receive a Water'
  end

  # Edge / Erroneous cases

  scenario "User cannot buy something the vending machine doesn't have" do
    start_program

    insert_amount(2)
    select_item('Redbull')

    expect(read_output).to eq 'Error: Item not stocked!'
  end

  scenario 'User cannot buy somthing if not the right amount of money' do
    start_program

    insert_amount(1)
    select_item('Water')

    expect(read_output).to eq 'Error: you need 1 more to get a Water'
  end
end
