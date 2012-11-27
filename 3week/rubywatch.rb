file = gets.chomp

while file
  %x{rubydoctest #{file}}
  sleep(3) 
  
end
