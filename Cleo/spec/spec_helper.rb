require 'capybara'
require 'capybara/rspec'
require 'coveralls'
require 'simplecov'
require 'simplecov-console'
require 'rspec'

# Helper files
require_relative 'features_helper.rb'
require_relative '../lib/vending_machine.rb'
require_relative '../lib/maintance_person.rb'
require_relative '../lib/currency.rb'

# Clear the terminal to keep things clean
system 'clear'

Coveralls.wear!

SimpleCov.formatter = SimpleCov::Formatter::MultiFormatter.new([
                                                                 Coveralls::SimpleCov::Formatter,
                                                                 SimpleCov::Formatter::Console
                                                               ])
SimpleCov.start
RSpec.configure do |config|
  config.expect_with :rspec do |expectations|
    expectations.include_chain_clauses_in_custom_matcher_descriptions = true
  end

  config.mock_with :rspec do |mocks|
    mocks.verify_partial_doubles = true
  end

  config.shared_context_metadata_behavior = :apply_to_host_groups
end
