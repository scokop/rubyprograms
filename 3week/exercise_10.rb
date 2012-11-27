=begin                                                          
doctest: This tests to see if an array sums correctly..         
>> sum_array([1,2,3,4,5])                                       
=> 15                                                           
doctest: This tests to see if an array of floats sums correctly 
>> sum_array([1.5, 2.5, 3.5, 4.5, 5.5])                         
=> 17.5                                                         
doctest: This tests to see if an array of strings sums correctly
>> sum_array(%w[one two three four])                            
=> "onetwothreefour"                                            
=end  

def sum_array(array)
  array.inject(:+)
end

if __FILE__ == $0
puts "Enter a series of numbers separated by commas."
answer = gets.chomp
array = answer.split(',')

puts sum_array(array)
end

