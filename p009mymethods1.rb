 # p009mymethods1.rb
# interpolation refers to the process of inserting the rsult of an
# epxression into a string literal
# the interpolation operation #{...} gets calculated separately
def mtd(arg1="Dibya", arg2="Shashank", arg3="Shashank")
  "#{arg1}, #{arg2}, #{arg3}."
end
puts mtd
puts mtd("ruby")

