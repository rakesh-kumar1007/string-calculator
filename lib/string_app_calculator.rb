class StringAppCalculator
  def add(number)
    return 0 if number.blank?

    return number.split(',').map(&:to_i).sum
  end
end