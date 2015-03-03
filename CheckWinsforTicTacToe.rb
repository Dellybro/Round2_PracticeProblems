def win(movestoCheck)
wins = [[1,2,3],[4,5,6],[7,8,9],[1,4,7],[2,5,8],[3,6,9],[7,5,3],[1,5,9]]

wins.map {|l|
  count = 0
  movestoCheck. map {|p|
    if l.include?(p)
      count+=1
    end
  }
  if count == 3
    puts "playerWins!"
    break
  end
}

end

puts win([1,2,3])
