=begin

doctest: This tests to make sure the quiz attempts are correctly counted
>> quiz = [0,0,0,1,0,0,1,1,0,1]
>> quiz_sorter(quiz)
=> 6

=end

def quiz_sorter(quiz)
  students_attempted = 0
  students_didnt_attempt = 0
  quiz.each do |student|
    case student
    when 1
      students_attempted += 1
    when 0
      students_didnt_attempt += 1
    end
  end
    return students_didnt_attempt
end

quiz = [0,0,0,1,0,0,1,1,0,1]
puts "The number of participants who did not attempt Quiz 1 is #{quiz_sorter(quiz)} out of #{quiz.length} total participants."
