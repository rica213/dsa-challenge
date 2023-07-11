# @param {Integer[]} nums
# @param {Integer} k
# @return {Float}
def find_max_average(nums, k)
    allAverage = []
    initSum = 0
    startPointer = 0
    nums.each_with_index do |num, id| 
        initSum += num
        if id == k-1
            allAverage << initSum.to_f / k
        elsif id >= k
            allAverage << (initSum - nums[startPointer]).to_f / k
            initSum -= nums[startPointer]
            startPointer += 1
        end
    end
    allAverage.max
end
