=begin

doctest: This tests whether numbers are sorting correctly.
>> numbers = [12,34,456,4579]
>> odds_evens(numbers)
=> "12 even\n23 odd\n256 even\n4579 odd\n"

=end

def odds_evens(numbers)
  output = ""
  numbers.each do |number|
    if number % 2 == 0
      output << "#{number} even\n"
    else
      output << "#{number} odd\n"
    end
  end
  return output
end


numbers = [12,23,456,4579]
puts odds_evens(numbers)
