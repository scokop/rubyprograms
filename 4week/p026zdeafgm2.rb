class Conversation

  def initialize
    @answers_collection =[]
  end

  def speak
    bye = false
    while bye == false
      print "You Enter: "
      message = gets.chomp
      bye = goodbye(message)
        if bye == true
          exit
        end
          reply(hear(message))
    end
    puts "BYE!"
  end

  def hear(message)
    if message == message.upcase
      true
    else
      false
    end
  end

  def reply(hear)
    if hear
      puts "Grandma responds: NO, NOT SINCE #{1930 + rand(21)}!"
    else
      puts "Granda responds: HUH?! SPEAK UP, SONNY!"
    end
  end

  def goodbye(message)
    @answers_collection << message
    if @answers_collection.length == 3
      if @answers_collection == ['BYE','BYE','BYE']
        true
      else
        @answers_collection.delete_at(0)
        false
      end      
    else
      false
    end
  end
end

if __FILE__ ==$0
grandma = Conversation.new
grandma.speak
end
