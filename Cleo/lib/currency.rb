# frozen_string_literal: true

# Takes an amount and outputs values in change
class ChangeConversion
  attr_reader :change

  def initialize
    @numerical_values = {
                  '£' => [2, 1],
                  'p' => [50, 20, 10, 5, 2, 1]
                  }
    @values           = ['£', 'p']
    @change           = []
  end

  def calculate(input)
    amount = input

    split_pound_pence = amount.tr('£', '').split('.') if amount.include?('£')
    raise('Input was not correct. Please make sure it is similar to "£1.23"') if split_pound_pence.nil?

    @values.each do |currency|
      checked = split_pound_pence.shift.to_i

      @numerical_values[currency].each do |denominator|
        remainder = checked / denominator
        next unless !checked.zero? && !remainder.zero?

        change << [(currency + denominator.to_s), remainder] if currency == '£'
        change << [(denominator.to_s + currency), remainder] if currency == 'p'

        checked -= (denominator * remainder)
      end
    end


    @change
  end
end
