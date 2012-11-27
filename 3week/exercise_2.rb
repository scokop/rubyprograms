
def retrieve_data
  puts "Please enter the name of the file to be processed."
  file_name = gets.chomp
  text = File.open("#{file_name}", "r") do |f|
    f.read
  end
end

def process_text(text)
  text.gsub!(/word/, 'inserted word')
end

def write_data(modified_text)
  puts "Please enter the name of the file to be saved (without extension)."
  file_name = gets.chomp
  File.open("#{file_name}.txt", "w") do |f|
    f.puts modified_text
  end
end

modified_text =  process_text(retrieve_data)
write_data(modified_text)
