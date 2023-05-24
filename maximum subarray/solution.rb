# @param {Integer[]} nums
# @return {Integer}
def max_sub_array(nums)
    max_sum = -Float::INFINITY
    new_sum = 0
    nums.each_index do |index|
        new_sum = [nums[index], new_sum + nums[index]].max
        max_sum = [max_sum, new_sum].max
    end
    max_sum    
end
