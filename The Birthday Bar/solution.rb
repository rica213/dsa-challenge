# @params {<Array> Integer} s
# @params {Integer} d
# @params {Integer} m
# @returns {Integer} output
def birthday(s, d, m)
    output = 0
    start_point = 0
    end_point = m-1
    while end_point <= s.length-1
        if s.slice(start_point,m).inject(:+) == d
            output += 1
        end
        start_point +=1
        end_point +=1
    end 
    output   
end
