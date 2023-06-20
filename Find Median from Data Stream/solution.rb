class MedianFinder
    def initialize()
        @array = []
    end


=begin
    :type num: Integer
    :rtype: Void
=end
    def add_num(num)
        (i = @array.bsearch_index { |n| num <= n}) ? @array.insert(i, num) : @array << num
    end


=begin
    :rtype: Float
=end
    def find_median()
        mid = @array.length/2
        if @array.length.odd? 
            @array[mid].to_f
        else
            (@array[mid - 1] + @array[mid]).to_f/2
        end
    end
end

# Your MedianFinder object will be instantiated and called as such:
# obj = MedianFinder.new()
# obj.add_num(num)
# param_2 = obj.find_median()
