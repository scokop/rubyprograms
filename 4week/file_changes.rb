puts
puts 'New files are indicated by ">", changed files are indicated by "|"'
puts
puts "Old Files                                                New Files"
puts
puts %x{diff -y old-inventory.txt new-inventory.txt}


