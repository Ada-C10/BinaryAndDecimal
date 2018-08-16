def binary_to_decimal(binary_array)
  decimal_num = 0

  binary_array.length.times do |i|
    decimal_num += ( binary_array[i] * ((2) ** ((binary_array.length - 1) - i)) )
  end
  return decimal_num
end
