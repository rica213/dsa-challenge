def advanced_quicksort(array, low = 0, high = array.length - 1)
  if low < high
    pivot_index = partition(array, low, high)
    puts "#{array}"
    advanced_quicksort(array, low, pivot_index - 1)
    advanced_quicksort(array, pivot_index + 1, high)
  end
end

def partition(array, low, high)
  pivot = array[high]
  i = low - 1
  
  (low .. high - 1).each do |j|
    if array[j] <= pivot
      i += 1
      array[i], array[j] = array[j], array[i]
    end
  end
  
  array[i + 1], array[high] = array[high], array[i + 1]
  
  i + 1
end
