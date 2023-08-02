# @param {Integer[]} candies
# @param {Integer} extra_candies
# @return {Boolean[]}
def kids_with_candies(candies, extra_candies)
  max = candies.max
  result = []
  candies.each do |candy| 
    if candy + extra_candies >= max
        result << true
    else
        result << false
    end
  end
  result
end
