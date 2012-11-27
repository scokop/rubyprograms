def retrieve_file
text =  File.readlines("test.txt")
end

def text_analyzer(text)
  text_results = {}  
  text_results[:number_of_lines] = text.length
  text_results[:text_as_string] = text.join
  text_results[:character_count] = text_results[:text_as_string].length
  text_results[:no_whitespace] = text_results[:text_as_string].delete(" ")
  text_results[:character_count_no_spaces] = text_results[:no_whitespace].length
  text_results[:number_of_words] = text_results[:text_as_string].split(" ").length
  text_results[:number_of_sentences] = text_results[:text_as_string].split(/\.|\?|!/).length
  text_results[:number_of_paragraphs] = text_results[:text_as_string].split(/\n\n/).length
  text_results[:characters_per_word] = (text_results[:character_count_no_spaces]/text_results[:number_of_words].to_f).round(2)
  text_results[:words_per_sentence] = (text_results[:number_of_words]/text_results[:number_of_sentences].to_f).round(2)
  text_results[:sentences_per_paragraph] = (text_results[:number_of_sentences]/text_results[:number_of_paragraphs].to_f).round(2)
  return text_results
end

def output_results(text_results)
  puts "There are #{text_results[:number_of_lines]} lines."
  puts "There are #{text_results[:character_count]} characters."
  puts "There are #{text_results[:character_count_no_spaces]} non-whitespace characters."
  puts "There are #{text_results[:number_of_words]} words."
  puts "There are #{text_results[:number_of_sentences]} sentences."
  puts "There are #{text_results[:number_of_paragraphs]} paragraphs."
  puts "There are #{text_results[:characters_per_word]} characters per word."
  puts "There are #{text_results[:words_per_sentence]} words per sentence."
  puts "There are #{text_results[:sentences_per_paragraph]} sentences per paragraph."
end

text_results = text_analyzer(retrieve_file)
output_results(text_results)
