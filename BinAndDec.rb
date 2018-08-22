def binary_to_decimal(binary_array)
  decimal = 0

  binary_array.length.times do |num|
    decimal += (2 ** num) * binary_array.pop()
  end

  return decimal

end
