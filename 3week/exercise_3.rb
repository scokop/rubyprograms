puts Dir.getwd
Dir.mkdir("tmp")
Dir.chdir("#{Dir.getwd}/tmp")
puts Dir.getwd
Dir.chdir("..")
Dir.rmdir("tmp")
