def retrieve_file
  text =  File.readlines("text.txt")
end

def text_analyzer(text)
  text_results = {}  
  text_results[:number_of_lines] = text.length, 'lines'
  text_results[:text_as_string] = text.join
  text_results[:character_count] = text_results[:text_as_string].length, 'characters'
  text_results[:no_whitespace] = text_results[:text_as_string].delete(" ")
  text_results[:character_count_no_spaces] = text_results[:no_whitespace].length, 'characters without spaces'
  text_results[:number_of_words] = text_results[:text_as_string].split(" ").length, 'words'
  text_results[:number_of_sentences] = text_results[:text_as_string].split(/\.|\?|!/).length, 'sentences'
  text_results[:number_of_paragraphs] = text_results[:text_as_string].split(/\n\n/).length, 'paragraphs'
  text_results[:characters_per_word] = (text_results[:character_count_no_spaces][0]/text_results[:number_of_words][0].to_f).round(2), 'characters per word'
  text_results[:words_per_sentence] = (text_results[:number_of_words][0]/text_results[:number_of_sentences][0].to_f).round(2), 'words per sentence'
  text_results[:sentences_per_paragraph] = (text_results[:number_of_sentences][0]/text_results[:number_of_paragraphs][0].to_f).round(2), 'sentences per paragraph'
  return text_results
end

def output_results(text_results)
  puts "There are #{text_results[:number_of_lines][0]} #{text_results[:number_of_lines][1]}."
  puts "There are #{text_results[:character_count][0]} #{text_results[:character_count][1]}."
  puts "There are #{text_results[:character_count_no_spaces][0]} #{text_results[:character_count_no_spaces][1]}."
  puts "There are #{text_results[:number_of_words][0]} #{text_results[:number_of_words][1]}."
  puts "There are #{text_results[:number_of_sentences][0]} #{text_results[:number_of_sentences][1]}."
  puts "There are #{text_results[:number_of_paragraphs][0]} #{text_results[:number_of_paragraphs][1]}."
  puts "There are #{text_results[:characters_per_word][0]} #{text_results[:characters_per_word][1]}."
  puts "There are #{text_results[:words_per_sentence][0]} #{text_results[:words_per_sentence][1]}."
  puts "There are #{text_results[:sentences_per_paragraph][0]} #{text_results[:sentences_per_paragraph][1]}."
end
text_results = text_analyzer(retrieve_file)
output_results(text_results)
