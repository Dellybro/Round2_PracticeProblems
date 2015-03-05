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
  words = str.split("")
  result = ""
  words.map{ |idx|
    result << " " if idx == " "
    result << MORSE_CODE[idx].to_s << " " unless idx == " "
  }
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
