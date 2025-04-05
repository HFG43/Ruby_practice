class String
    def is_upper?
        self == self.upcase
    end
end

def caesar_cipher(string, position)
    alphabet = {"a"=>1, "b"=>2, "c"=>3, "d"=>4, "e"=>5, "f"=>6, "g"=>7, "h"=>8, "i"=>9, "j"=>10, "k"=>11, "l"=>12, "m"=>13, "n"=>14, "o"=>15, "p"=>16, "q"=>17, "r"=>18, "s"=>19, "t"=>20, "u"=>21, "v"=>22, "w"=>23, "x"=>24, "y"=>25, "z"=>26}
    alphabet_length = alphabet.size
    caesar_message_array = []

    string_to_array = string.split("")
    string_to_array.each do |letter|
        if !alphabet.keys.include?(letter)
            caesar_message_array << letter
        elsif letter.is_upper?
            letter = letter.downcase
            original_index = alphabet.map { |key, value| value if key == letter}.join.to_i
            new_position = 0
        
            unless original_index + position > alphabet_length
                new_position = original_index + position
            else
                new_position = (original_index + position) - alphabet_length
            end
            caesar_message_array << alphabet.map { |key, value| key if value == new_position}.join.upcase
        else    
            original_index = alphabet.map { |key, value| value if key == letter}.join.to_i
            new_position = 0
        
            unless original_index + position > alphabet_length
                new_position = original_index + position
            else
                new_position = (original_index + position) - alphabet_length
            end
            caesar_message_array << alphabet.map { |key, value| key if value == new_position}.join
        end
    end
    p caesar_message_array.join
end

caesar_cipher("What a string!", 5)
  