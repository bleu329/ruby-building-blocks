def substrings string, dictionary
  substrings = Hash.new(0)
  string.downcase.split.each do |word|
    dictionary.each do |dict_word|
      substrings[dict_word] += 1 if word.include? dict_word
    end
  end
  substrings
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
print substrings("Howdy partner, sit down! How's it going?", dictionary)
