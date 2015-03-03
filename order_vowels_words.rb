$vowels = ['a','e','i','o','u']

def ordered_vowel_words(str)
  idx = 0

  vowHolder = []
  while idx < str.length
    vowHolder << str[idx] if $vowels.include?(str[idx])
    idx+=1
  end


  return checkOrder(vowHolder)

end
def checkOrder(vowels)

  (0...(vowels.length - 1)).all? do |i|
    vowels[i] <= vowels[i + 1]
  end
end

puts ordered_vowel_words("amends")
puts ordered_vowel_words("crypt")
puts ordered_vowel_words("tamely")
puts ordered_vowel_words("complicated")
