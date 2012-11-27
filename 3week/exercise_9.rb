=begin
doctest: This tests to see if the sentence gets reversed.
>> reverse_sentence("This is a test")
=> "test a is This"
=end

def reverse_sentence(text)
  words = text.split
  words.reverse!.join(" ")
end

puts "Please enter a string."
text = gets.chomp

puts reverse_sentence(text)
