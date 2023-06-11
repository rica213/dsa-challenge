def simple_quicksort(array)
  return array if array.length <= 1
  
  pivot = array.shift
  left, right = partition(array, pivot)
  
  sorted_left = simple_quicksort(left)
  sorted_right = simple_quicksort(right)
  
  sorted_array = sorted_left + [pivot] + sorted_right
  puts sorted_array.join(' ')
  
  sorted_array
end

def partition(array, pivot)
  left = []
  right = []
  
  array.each do |item|
    item <= pivot ? left << item : right << item
  end
  
   [left, right]
 end
