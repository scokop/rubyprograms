=begin
doctest: This tests a regular leap year
>> leap_year?(2004)
=> [true,527040]
doctest: This tests a full century to see if it is a leap year
>> leap_year?(2000)
=> [true,527040]
doctest: This tests a non-leap year
>> leap_year?(2005)
=> [false,525600]
doctest: This tests a non-leap year that falls on a century
>> leap_year?(1900)
=> [false,525600]
=end

def leap_year?(year)
  results = []
  if year % 4 == 0 && year % 100 != 0 || year % 400 == 0
    results << true
    results << 366 * 24 * 60
  else
    results << false
    results << 365 * 24 * 60
  end
end

puts "Please enter a year."
year = gets.to_i
answer = leap_year?(year)

puts "It is #{answer[0]} that #{year} is a leap year."
puts "The number of minutes in this year is #{answer[1]}."


