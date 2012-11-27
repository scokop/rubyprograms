
def fizzbuzz
  1.upto(100) do |number|
    fizz_buzz_output = ""
    if number % 3 == 0 then fizz_buzz_output << "Fizz" end
    if number % 5 == 0 then fizz_buzz_output << "Buzz" end
    if fizz_buzz_output.empty?
        puts number 
    else
        puts fizz_buzz_output
    end
  end
end

fizzbuzz
