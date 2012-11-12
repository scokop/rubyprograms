
def convert(fahrenheit)
  celsius = (fahrenheit-32) / 1.8
end

puts "Enter a temperature in Fahrenheit"
temperature = gets.to_i

puts "The temperature in celsius is #{sprintf("%.2f",convert(temperature))}"

