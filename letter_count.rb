def letter_count(str)
  hash = Hash.new(0)

  idx = 0
  while idx < str.length
    hash[str[idx]]+=1 if str[idx] != " "
    idx+=1
  end
  hash

end

=begin

another way to do this is simply by using each_char giving it a 0 or 1 freq, (than adding one for instructional purpose)


str.each_char |char|
  hash[char]+=1 
end
hash

=end

puts letter_count("cats are fun") == {
    "a" => 2,
    "c" => 1,
    "e"=> 1,
    "f" => 1,
    "n" => 1,
    "r" => 1,
    "s" => 1,
    "t" => 1,
    "u" => 1
}
