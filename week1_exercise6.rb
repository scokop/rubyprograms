
def convert(fahrenheit)
  celsius = (fahrenheit-32) / 1.8
  puts "The temperature in celsius is #{sprintf("%.2f",celsius)}"
end

puts "Enter a temperature in Fahrenheit"
temperature = gets.chomp.to_i
convert(temperature)

