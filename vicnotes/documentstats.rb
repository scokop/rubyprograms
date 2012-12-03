def retrieve_file
  File.readlines("text.txt").join("\n")
end


class TextAnalyzer
  def initialize(text)
    @text = text.split("\n")
  end
  def text_analyzer
    text_results = {}
    text_as_string = @text.join
    no_whitespace = text_as_string.delete(" ")
    text_results[:number_of_lines] = @text.length, 'lines'
    text_results[:character_count] = text_as_string.length, 'characters'
    text_results[:character_count_no_spaces] = no_whitespace.length, 'characters without spaces'
    text_results[:number_of_words] = text_as_string.split(" ").length, 'words'
    text_results[:number_of_sentences] = text_as_string.split(/\.|\?|!/).length, 'sentences'
    text_results[:number_of_paragraphs] = text_as_string.split(/\n\n/).length, 'paragraphs'
    text_results[:characters_per_word] = (text_results[:character_count_no_spaces][0]/text_results[:number_of_words][0].to_f).round(2), 'characters per word'
    text_results[:words_per_sentence] = (text_results[:number_of_words][0]/text_results[:number_of_sentences][0].to_f).round(2), 'words per sentence'
    text_results[:sentences_per_paragraph] = (text_results[:number_of_sentences][0]/text_results[:number_of_paragraphs][0].to_f).round(2), 'sentences per paragraph'
    @statistics = text_results
  end

  def report_results(options = nil)
    defaults = options || [:number_of_lines, :character_count, :character_count_no_spaces, :number_of_words, :number_of_sentences, :number_of_paragraphs, :characters_per_word, :words_per_sentence, :sentences_per_paragraph]
    results = []
    defaults.each do | key |
      results << "There are %s %s." % @statistics[key]
    end
    results
  end
end

ta = TextAnalyzer.new("Mary had a little lamb\nSome whiskey\nAnd some rice.")
results = ta.text_analyzer
puts "Here are your options for a report:"
#puts text_results.keys
puts ta.report_results([:words_per_sentence, :sentences_per_paragraph])

