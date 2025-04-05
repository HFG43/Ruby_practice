def substrings(word, dictionary)
  result = {}
  words_array = word.split(" ")

  word_count = 0
  words_array.each do |word|
    dictionary.each do |dictionary_word|
        word_count = 0
          if word.include?(dictionary_word)
              if result.has_key?(dictionary_word)
                  result[dictionary_word] += 1
              else  
                  word_count += 1
                  result[dictionary_word] = word_count
              end    
          end
      end
  end
  puts result
end

dictionary = ["below","below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
substrings("below", dictionary)
