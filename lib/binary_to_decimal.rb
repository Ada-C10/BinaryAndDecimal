# A method named `binary_to_decimal` that receives as input an array of size 8.
# The array is randomly filled with 0’s and 1’s.
# The most significant bit is at index 0.
# The least significant bit is at index 7.
# Calculate  and return the decimal value for this binary number using
# the algorithm you devised in class.
def binary_to_decimal(binary_array)

  decimal_num = 0

  power_num = binary_array.length - 1

  binary_array.each do |num|
    decimal_num = (num * 2**power_num) + decimal_num
    power_num = power_num - 1
    # raise NotImplementedError
  end

  return decimal_num

end
