# @params {Integer} n - The length of the book
# @params {Integer} p - The page where we want to open
# @returns {Integer} - The minimum of number of flips to reach p
def pageCount(n, p)
    if n.equal? p
        return 0
    end
    flip_from_start = p / 2
    if (p.odd? && n.odd?) || (p.even? && n.even?)
        flip_from_end = (n - p)/2
    elsif n.odd? && p.even?
        flip_from_end = (n - p -1)/2
    else
        flip_from_end = ((n - p)/2) + 1
    end
    [flip_from_start, flip_from_end].min
end
