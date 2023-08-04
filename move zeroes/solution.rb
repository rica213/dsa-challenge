# @param {Integer[]} nums
# @return {Void} Do not return anything, modify nums in-place instead.
def move_zeroes(nums)
    ref = 0
    nums.each_with_index do |num,index|
        unless num.zero?
            nums[ref], nums[index]  = nums[index] , nums[ref]
            ref += 1
        end
    end
end
