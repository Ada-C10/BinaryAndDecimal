# A method named `binary_to_decimal` that receives as input an array of size 8.
# The array is randomly filled with 0’s and 1’s.
# The most significant bit is at index 0.
# The least significant bit is at index 7.
# Calculate  and return the decimal value for this binary number using
# the algorithm you devised in class.
def binary_to_decimal(binary_array)
  exponents = [7, 6, 5, 4, 3, 2, 1, 0]
  decimal_num = 0
  exp = 0
  raise NotImplementedError if binary_array.length != 8

  binary_array.each do  |i|
    convert = i * (2**(exponents[exp]))
    decimal_num += convert
    exp +=1
  end
  return decimal_num
end
