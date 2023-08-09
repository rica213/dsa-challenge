def sort_matrix(arr_2d)
  arr_1d = arr_2d.flatten.sort # [1,2,3,4,5,6,7,8,9]
  size = arr_2d.length
  # create the new 2D array 
  sorted_2d = Array.new(size) { [] } # [[],[],[]]
  # populate the new 2D array
  arr_1d.each_with_index do |value, index|
    row = index/size
    sorted_2d[row] << value
  end  

  sorted_2d
end
