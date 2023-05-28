def insertion_sort(array)
  1.upto(array.length - 1) do |i|
    while i > 0 && array[i-1] > array[i]
      array[i-1], array[i] = array[i], array[i-1] # swap elements
      i -= 1
    end
    puts array.join(' ')
  end
  array
end

insertion_sort([1, 4, 3, 6, 9, 2])
# => 1 4 3 6 9 2
#    1 3 4 6 9 2
#    1 3 4 6 9 2
#    1 3 4 6 9 2
#    1 2 3 4 6 9

