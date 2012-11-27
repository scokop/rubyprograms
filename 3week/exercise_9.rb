=begin                                                              
doctest: This tests to see if the sentence gets reversed.           
>> reverse_sentence("this is a test")                               
=> "test a is this"                                                 
doctest: This puts the period at the end                            
>> reverse_sentence("this is a test.")                              
=> "test a is this."                                                
doctest: it also capitalizes properly                               
>> reverse_sentence("This puts the proper sentence capitalization.")
=> "Capitalization sentence proper the puts this."                  
=end

def reverse_sentence(text)
  punctuation = text.slice!(/[.?!]/)
  words = text.split
  if words[0] != words[0].downcase
    words[0].downcase!
    words.last.capitalize!
  end
  if punctuation.nil? then punctuation = "" end
  words.reverse!.join(" ") << punctuation
end 

if __FILE__ == $0
  puts "Please enter a string."
  text = gets.chomp

  puts reverse_sentence(text)
end
