=begin
doctest: I have a method hello that returns "Hello World!"
>> hello
=> "Hello World!"
doctest: I can greet someone personally
>> hello("Scott")
=> "Hello Scott!"
doctest: I can ask if someone is there
>> hello('Victor', '?')
=> "Hello Victor?"
=end

def hello(name="World", punctuation='!')
 "Hello #{name}#{punctuation}" 
end
