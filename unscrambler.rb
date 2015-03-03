def word_unscrambler(str, words)
  sLetters = str.split("").sort!
  anagrams = []
  words.each do |x|
    wLetters = x.split("").sort!
    anagrams << x if wLetters == sLetters
  end
  anagrams


end


=begin
Probably the easiest one out of all of the practice Problems so far
create an char_array of the str letters
than iterate through the words array
each iteration turn iterator into a char_array
check if str char_array == w char_array

if it does add x to anagrams, return anagrams

=end


puts word_unscrambler("cat", ["tac"]) == ["tac"]

puts word_unscrambler("cat", ["tom"]) == []

puts word_unscrambler("cat", ["tic", "toc", "tac", "toe"]) == ["tac"]

puts word_unscrambler("cat", ["scatter", "tac", "ca"] ) == ["tac"]

puts word_unscrambler("turn", ["numb", "turn", "runt", "nurt"])== ["turn", "runt", "nurt"]
