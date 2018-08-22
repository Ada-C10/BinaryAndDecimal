def binary_to_decimal(binary_array) #[01010100] 2**7 ~ 2**0
  sum = 0
  length = 8
  binary_array.each do |i|
    length -= 1
    sum += i.to_i * (2**length)
  end
  sum
end
