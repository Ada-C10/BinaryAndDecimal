def binary_to_decimal(binary_array)
  decimal_array = []
  power_of_2 = 7
  binary_array.each do |bit|
    decimal_of_bit = bit * (2 ** power_of_2)

    decimal_array << decimal_of_bit
    power_of_2 = power_of_2 - 1
  end

  sum = 0
  decimal_array.each do |decimal|
    sum += decimal
  end

  return sum
end
