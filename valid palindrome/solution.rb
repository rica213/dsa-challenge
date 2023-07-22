# @param {String} s
# @return {Boolean}
def is_palindrome(s)
    # convert string to lowercase
    # remove all non-alphanumeric characters
    # then compare reverse with the altered string
    new_string = s.downcase.gsub(/[^\w]/, '')
    reverse_string = new_string.reverse
    reverse_string.eql?(new_string)
end
