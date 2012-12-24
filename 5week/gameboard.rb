
class GameBoard
  attr_accessor :game_cells

  def initialize
    @game_cells = [true,true,true,true,true,true,true]
  end
  def set_locations_cells(locations)
    locations.each {|number| @game_cells[number] = false}   
  end
  def check_yourself(user_guess)
    user_guess = user_guess.to_i
    @game_cells[user_guess] = true if  @game_cells[user_guess] == false 
    @game_cells.include?(false) ? "alive" : "kill"
  end
end


