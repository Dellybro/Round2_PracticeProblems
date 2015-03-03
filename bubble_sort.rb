def bubble_sort(arr)

  for num in 0...arr.size
    for num2 in 0...arr.size
      if arr[num] < arr[num2]
        holder = arr[num]
        arr[num] = arr[num2]
        arr[num2] = holder
      end
    end
  end
  return arr

end


puts bubble_sort([]) == []

puts bubble_sort([1]) == [1]

puts bubble_sort([5, 4, 3, 2, 1]) == [1, 2, 3, 4, 5]
=begin
Im going to reupload another bubble sort, this is a simple simple version of a bubble sort and it uses a lot of memory
=end
