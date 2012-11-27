=begin
doctest: This tests the output of the string conversion
>> multi_line_string = "Welcome to the forum.\nHere you can learn Ruby.\nAlong with other members.\n"
>> linify(multi_line_string)
=> "Line 1: Welcome to the forum.\nLine 2: Here you can learn Ruby.\nLine 3: Along with other members.\n"

=end


def linify(multi_line_string)
  multi_line_string.split("\n").map.with_index(1) {|line,index| "Line #{index}: #{line}\n"}.join
end

if __FILE__ == $0
s = "Welcome to the forum.\nHere you can learn Ruby.\nAlong with other members.\n"
puts converter(s) 
end


