class StringAppCalculator
  def add(numbers)
    return 0 if numbers.blank?

    if numbers.include?("//") && numbers.include?(";") # "//;\n1;2"
      delimiter_line, numbers_line = numbers.split("\n", 2)
      delimiter = delimiter_line[2..-1]
      numbers = numbers_line.split(delimiter).map(&:to_i)
      return numbers.sum
    end

    return numbers.split(/[\n,]/).map(&:to_i).sum if numbers.include?("\n") && !numbers.include?("//") #"1\n2,3"

    negatives = numbers.split(',').select { |n| n.to_i < 0 }
    raise "Negative numbers not allowed: #{negatives.join(', ')}" if negatives.any?

    return numbers.split(',').map(&:to_i).sum # rest
  end
end