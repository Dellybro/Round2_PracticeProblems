def nearest_larger(arr, idx)
  while true
    if arr[idx-1] > arr[idx]
      return idx-1
    elsif arr[idx+1] > arr[idx]
      return idx+1
    else
      return true
    end
  end

end


puts nearest_larger([2,3,4,8], 2) == 3
