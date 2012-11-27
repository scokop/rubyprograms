=begin

doctest: This tests to see if an array sums correctly. 
>> sum_array([1,2,3,4,5])
=> 15

=end

def sum_array(array)
  total = 0
  array.each do |number|
    total += number.to_i
  end
  return total
end

if __FILE__ == $0
puts "Enter a series of numbers separated by commas."
answer = gets.chomp
array = answer.split(',')

puts sum_array(array)
end

