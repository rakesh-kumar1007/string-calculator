class StringAppCalculator
  def add(numbers)
    return 0 if numbers.blank?

    return numbers.split(',').map(&:to_i).sum
  end
end