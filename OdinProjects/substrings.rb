# frozen_string_literal: true

def substrings(word_to_check, dictionary)
  result = {}
  words_array = word_to_check.split(' ')

  word_count = 0
  words_array.each do |word|
    dictionary.each do |dictionary_word|
      word_count = 0
      if word.include?(dictionary_word)
        if result.key?(dictionary_word)
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

dictionary = %w[below below down go going horn how howdy it i low own part
                partner sit]
substrings('below', dictionary)
