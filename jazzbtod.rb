def binary_to_decimal(binary_array)
  # raise NotImplementedError
  count = 8
  new_array = []
  binary_array.each do |index|
    new_array << (2 ** (count -= 1)) * index
  end
  return new_array.sum
end
