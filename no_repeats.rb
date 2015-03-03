def no_repeats(year_start, year_end)
  yearArr = Array.new()
  pos = 0
  while year_start <= year_end
    unless checkYear?(year_start)
      yearArr[pos] = year_start
      pos+=1
    end
    year_start+=1
  end

  yearArr

end

def checkYear?(year)
  holder = Array.new()
  idx = 0
  year.to_s.each_char do |x|
    return true if holder.include?(x)
    holder[idx] = x
    idx+=1
  end
false


end

puts no_repeats(1980, 2015) == [
      1980,
      1982,
      1983,
      1984,
      1985,
      1986,
      1987,
      2013,
      2014,
      2015
  ]
