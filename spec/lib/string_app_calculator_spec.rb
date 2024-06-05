# spec/lib/string_calculator_spec.rb
require 'rails_helper'
require 'string_app_calculator'

RSpec.describe StringAppCalculator do
  let(:calculator) { StringAppCalculator.new }

  it 'returns 0 for an empty string' do
    expect(calculator.add("")).to eq(0)
  end

end
