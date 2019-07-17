# Cleo - AI

> [Cleo](https://www.meetcleo.com/), a digital assistant for your money.

## Vending machine

The tech test involed making a vending machine capable of;

- Once an item is selected and the appropriate amount of money is inserted, the vending machine should return the correct product

- It should also return change if too much money is provided, or ask for more money if insufficient funds have been inserted

- The machine should take an initial load of products and change. The change will be of denominations 1p, 2p, 5p, 10p, 20p, 50p, £1, £2

- There should be a way of reloading either products or change at a later point

- The machine should keep track of the products and change that it contains

### Method

-- Methods used

### TDD/BDD

Using the above criteria as MVP's, I used [RSpec](https://rspec.info/) in a [Cucumber](https://en.wikipedia.org/wiki/Cucumber_(software)) kind of way to break the problem down to a more readable kind of way.