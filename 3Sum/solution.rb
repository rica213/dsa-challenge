# @param {Integer[]} nums
# @return {Integer[][]}
def three_sum(nums)
    res = []
    if nums.length < 3 
        []
    end

    nums.sort!

    nums.each_with_index do |num, index|
        
        # This line is to prevent duplicate
        next if num == nums[index - 1] && index > 0
        
        l_index = index+1
        r_index = nums.length-1
        
        while l_index < r_index
            sum = num + nums[l_index] + nums[r_index]

            if sum == 0 
                res << [num, nums[l_index], nums[r_index]]
                l_index += 1
                # This line prevents duplicate
                l_index += 1 while nums[l_index] == nums[l_index - 1] && l_index < r_index
            elsif sum > 0
                r_index -= 1
            else
                l_index += 1
            end
        end 
    end
    res
end
