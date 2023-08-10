def encoding(message)
output = ""
code = message.bytes
b_string = code.map { |c| c.to_s(2).rjust(7, "0") }.join

i = 0
while i < b_string.length
  bit = b_string[i]
  count = 1

  while i + 1 < b_string.length && b_string[i + 1] == bit
    count += 1
    i += 1
  end

  output += (bit == "0" ? "00" : "0") + " " + "0" * count + " "
  i += 1
end

puts output.strip
end
