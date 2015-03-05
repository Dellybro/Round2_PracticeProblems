MORSE_CODE = {
    "a" => ".-",
    "b" => "-...",
    "c" => "-.-.",
    "d" => "-..",
    "e" => ".",
    "f" => "..-.",
    "g" => "--.",
    "h" => "....",
    "i" => "..",
    "j" => ".---",
    "k" => "-.-",
    "l" => ".-..",
    "m" => "--",
    "n" => "-.",
    "o" => "---",
    "p" => ".--.",
    "q" => "--.-",
    "r" => ".-.",
    "s" => "...",
    "t" => "-",
    "u" => "..-",
    "v" => "...-",
    "w" => ".--",
    "x" => "-..-",
    "y" => "-.--",
    "z" => "--.."
}

def morse_encode(str)
  idx = 0
  result = ""
  while idx < str.length
    result << " " if str[idx] == " "
    result << MORSE_CODE[str[idx]].to_s << " " unless str[idx] == " "
    idx+=1
  end
  result
end


def morse(str)
  words = str.split("")
  encodedWords = words.map {|i| encoded(i)}
  encodedWords.join(" ")


end
def encoded(i)
  letters = i.split("")
  encodedLetters = letters.map{|l| MORSE_CODE[l]}
  encodedLetters.join(" ")
end

puts morse("cat in hat")
puts morse_encode("cat in hat")
