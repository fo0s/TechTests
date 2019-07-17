# Once an item is selected and the appropriate amount
# of money is inserted, the vending machine should
# return the correct product

feature "A working vending machine" do
  # MVP
  scenario "User can buy a product" do
    start_program

    insert_amount(1.5)
    select_item('Water')

    expect(read_output).to eq 'You receive a Water'
  end

  # Edge / Erroneous cases

  scenario "User cannot buy something the vending machine doesn't have" do
    start_program

    insert_amount(1.5)

    expect(select_item('Redbull')).to eq 'Error!'
  end

  scenario "User cannot buy somthing if not the right amount of money" do
    start_program

    insert_amount(1)

    expect(select_item('Water')).to eq 'Error!'
  end
end