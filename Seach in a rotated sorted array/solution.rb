# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer}
def search(nums, target)
    min_index = nums.index(nums.min)
    sorted_arr = nums.rotate(min_index)
    res = sorted_arr.bsearch_index { |n| n.eql?(target) }
    res.nil? ? -1 : res
end
