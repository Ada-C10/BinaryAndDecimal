require 'pry'
# A method named `binary_to_decimal` that receives as input an array of size 8.
# The array is randomly filled with 0’s and 1’s.
# The most significant bit is at index 0.
# The least significant bit is at index 7.
# Calculate  and return the decimal value for this binary number using
# the algorithm you devised in class.
def binary_to_decimal(binary_array)
  # raise NotImplementedError
    i = 7
    count = 0
    decimal = 0
    until i < 0
        decimal += (binary_array[i] * (2 ** count))
        i -= 1
        count += 1
    end
    return decimal
end
