# A method named `binary_to_decimal` that receives as input an array of size 8.
# The array is randomly filled with 0’s and 1’s.
# The most significant bit is at index 0.
# The least significant bit is at index 7.
# Calculate  and return the decimal value for this binary number using
# the algorithm you devised in class.
# def binary_to_decimal(binary_array)
#   raise NotImplementedError
# end

def binary_to_decimal(bin_array)
  decimal = (bin_array[7] * 1) + (bin_array[6] * 2) + (bin_array[5] * 4) + (bin_array[4] * 8) + (bin_array[3] * 16) + (bin_array[2] * 32) + (bin_array[1] * 64) + (bin_array[0] * 128)
return decimal
end
