=begin
doctest: convert(-40)
>> convert 40
=> -40
doctest: convert(98.6)
>> convert 98.6
>> 37.0
docttest: convert(98)
The following test is to test a delta, it is "close enough"
>> (convert (98) * 10000 ).round / 10000.0
=> 36.666667
=end
def convert(fahrenheit)
  celsius = (fahrenheit-32) / 1.8
end

puts "Enter a temperature in Fahrenheit"
temperature = gets.to_i

puts "The temperature in celsius is #{sprintf("%.2f",convert(temperature))}"

