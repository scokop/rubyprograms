=begin
doctest: This tests a regular leap year
>> leap_year?(2004)
=> true
doctest: This tests a full century to see if it is a leap year
>> leap_year?(2000)
=> true
doctest: This tests a non-leap year
>> leap_year?(2005)
=> false
doctest: This tests a non-leap year that falls on a century
>> leap_year?(1900)
=> false
doctest: Minutes in a year for 2003
>> minutes_in_a_year(2003)
=> 525600
doctest: Minutes in a year for 2004 (leap year)
>> minutes_in_a_year(2004)
=> 527040
=end

def leap_year?(year)
  year % 4 == 0 && year % 100 != 0 || year % 400 == 0
end

def minutes_in_a_year(year)
  ( leap_year?(year) ? 366 : 365 ) * 24 * 60
end



if __FILE__ == $0
puts "Please enter a year."
year = gets.to_i
answer = leap_year?(year)

puts "It is #{answer[0]} that #{year} is a leap year."
puts "The number of minutes in this year is #{answer[1]}."
end


