
def grandma
  user_input = ""
 while user_input != "BYE"
    print "You enter: "
    user_input = gets.chomp 
    if user_input != user_input.upcase 
      puts "Grandma responds: HUH?! SPEAK UP, SONNY!" 
    elsif user_input != "BYE"
      puts "Grandma responds: NO, NOT SINCE #{1930 + rand(21)}!"
    end
  end
end

grandma
