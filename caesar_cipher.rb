def caesar_cipher string, number
  i = 0
  while i < string.length
    letter = string[i].ord
    if (letter >= 65 && letter <= 90) || (letter >= 97 && letter <= 122)
      letter += number
      if letter > 122
        letter -=26
      end
      if letter > 90 && letter < 97
        letter -= 26
      end
      string[i] = letter.chr
    end
    i += 1
  end
  string
end

puts caesar_cipher("What a string!", 5)
