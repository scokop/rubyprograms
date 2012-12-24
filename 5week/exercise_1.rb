class UnpredictableString < String
  def initialize(string)
    @string = string
  end
  def scramble
    @string.split("").shuffle.join
  end
end

class UserInteraction
  attr_reader :string

  def request
    puts "Please enter a string."
    @string = gets.chomp
  end
end

text = UserInteraction.new
text.request
scrambled_string = UnpredictableString.new(text.string)
puts scrambled_string.scramble

