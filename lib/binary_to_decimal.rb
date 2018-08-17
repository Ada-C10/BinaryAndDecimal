# A method named `binary_to_decimal` that receives as input an array of size 8.
# The array is randomly filled with 0’s and 1’s.
# The most significant bit is at index 0.
# The least significant bit is at index 7.
# Calculate  and return the decimal value for this binary number using
# the algorithm you devised in class.
def binary_to_decimal(binary_array)
  base_ten_num = 0
  index = 0
  while index < 8 do
    base_ten_num += binary_array[index] * (2 ** (7 - index))
    index += 1
  end
  return base_ten_num
end
