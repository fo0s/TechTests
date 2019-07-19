class ChangeConversion
  attr_reader :change

  def initialize
    @numerical_values = { "£"=> [2, 1], "p"=> [50, 20, 10, 5, 2, 1] } 
    @values = ["£", "p"]
    @change = []
  end

  def calculate(input)
    amount = input

    split_pound_pence = amount.tr('£', '').split('.') if amount.include?('£')

    @values.each do |currency|
      checked = split_pound_pence.shift.to_i

      @numerical_values[currency].each do |denominator|
        remainder = checked / denominator
        if !checked.zero? and !(remainder).zero?
          change << [(currency + denominator.to_s) , remainder] if currency == '£'
          change << [(denominator.to_s + currency) , remainder] if currency == 'p'

          checked -= (denominator * remainder)
        end
      end
    end
  end
end