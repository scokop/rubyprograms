=begin

doctest: This tests whether even numbers are sorting correctly.
>> odds_evens(12)
=> "even"
doctest: This tests whether odd numbers ore sorting correctly. 
>> odds_evens(23)
=> "odd"
=end

def odds_evens(*numbers)
  numbers.each do |number|
    if number % 2 == 0
      return "even"
    else
      return "odd"
    end
  end
end


numbers = [12,23,456,123,4579]
numbers.each do |number| 
  puts "Number #{number} is #{odds_evens(number)}."
end


