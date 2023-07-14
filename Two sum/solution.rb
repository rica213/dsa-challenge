# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer[]}
def two_sum(nums, target)
    result = []
    nums.each_index do |index|
        sliced_arr = nums.slice(index+1, nums.length-1)
        if sliced_arr.include? (target-nums[index])
            result = [index, sliced_arr.index(target-nums[index])+(index + 1)]
            break
        end
    end
    result
end
