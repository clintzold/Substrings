#A substring calculator

dictionary_array = "help hello go going gone time what now howdy how in out up down why when where".split(' ').to_a

def substring(string, dictionary)
  #initialize collection hash where substrings are stored and counted.
  substring_hash = {}
  #breaks string passed into individual words to compare and store in hash if substring
  string_array = string.split(' ').to_a
  dictionary.each do |dict_word|
    string_array.each do |compare_word|
      if compare_word.index(dict_word) != nil
        if substring_hash[dict_word].nil?
          substring_hash[dict_word] = 1
        else
          substring_hash[dict_word] =+ 1
        end
      end
    end
  end

  p substring_hash
end

substring('Hello, how is it going?', dictionary_array)
