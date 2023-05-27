def partition(array)
  return array if array.length <= 1
  pivot = array.shift
  left = []
  right = []
  array.each do |item| 
    item <= pivot ? left << item : right << item
  end
  [left , pivot , right].flatten
end

p partition([4, 5, 3, 9, 1])
# => [3, 1, 4, 5, 9]
