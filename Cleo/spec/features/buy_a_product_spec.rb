# Once an item is selected and the appropriate amount
# of money is inserted, the vending machine should
# return the correct product

feature "A working vending machine" do
  scenario "User can buy a product" do
    start_program

    insert_amount(1.5)
    select_item('Water')

    expect(success).to eq 'You receive a Water'
  end
end