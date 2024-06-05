# spec/lib/string_calculator_spec.rb
require 'rails_helper'
require 'string_app_calculator'

RSpec.describe StringAppCalculator do
  let(:calculator) { StringAppCalculator.new }

  it 'returns 0 for an empty string' do
    expect(calculator.add("")).to eq(0)
  end

  it 'returns a number for a single number' do
    expect(calculator.add("1")).to eq(1)
  end

  it 'returns sum of multiple numbers' do
    expect(calculator.add("1,3")).to eq(4)
  end

  it 'returns sum of new lines between numbers' do
    expect(calculator.add("1\n2,3")).to eq(6)
  end

  it 'returns sum of new lines between numbers' do
    expect(calculator.add("//;\n1;2")).to eq(3)
  end

  it 'raises an error for negative numbers' do
    expect { calculator.add("1,-2,3") }.to raise_error('Negative numbers not allowed: -2')
  end
end
