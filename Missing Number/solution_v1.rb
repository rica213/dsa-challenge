# @param {Integer[]} nums
# @return {Integer}
def missing_number(nums)
    ((0..nums.length).to_a - nums.sort!)[0]
end
