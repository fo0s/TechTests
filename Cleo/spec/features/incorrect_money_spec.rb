# frozen_string_literal: true

# It should also return change if too much money is
# provided, or ask for more money if insufficient
# funds have been inserted

feature 'Can handle incorrect amounts of money:' do
  # MVP
  scenario 'User is asked for more money if needed' do
    start_program

    insert_amount(1)
    select_item('Water')
    check_if_enough

    expect(read_output).to eq 'Error: you need 1 more to get a Water'
  end

  scenario 'User is given change if too much is given' do
    start_program

    insert_amount(5)
    select_item('Water')
    check_if_enough

    expect(read_output).to eq 'You receive a Water and 3 in change'
  end
end
