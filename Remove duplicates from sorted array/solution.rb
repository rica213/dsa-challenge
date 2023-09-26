# @param {Integer[]} nums
# @return {Integer}
def remove_duplicates(nums)
   s = 0
   e = 1
   size = nums.length
   while e <= size do
    if nums[s].eql?(nums[e])
        e += 1
    else
        nums[s+1] = nums[e]
        s +=1
        e +=1
    end
   end
   s
end
