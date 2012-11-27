=begin

doctest: This tests to make sure the quiz attempts are correctly counted
>> quiz = [0,0,0,1,0,0,1,1,0,1]
>> number_unattempted(quiz)
=> 6

=end

def number_unattempted(quiz)
  students_didnt_attempt = 0
  quiz.map {|student| if student == 0 then students_didnt_attempt += 1 end}
  return students_didnt_attempt
end

quiz = [0,0,0,1,0,0,1,1,0,1]
puts "The number of participants who did not attempt Quiz 1 is #{number_unattempted(quiz)} out of #{quiz.length} total participants."
