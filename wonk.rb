def wonk(num)
  return 1 if num==0

  return wonk(num/2) + wonk(num/3) + wonk(num/4)
end


puts wonk(6)


=begin
The problems asks to write a method that returns the number of coins you are left with if you take all non-zero coins 
and keep feeding them back into the machine until you are left with only zero-value coins

so each time you put a coin in there it makes a branch for the coin, until it returns 0
depending on how many branches, the result is returned

=end
