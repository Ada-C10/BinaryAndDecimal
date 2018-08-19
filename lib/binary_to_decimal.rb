# A method named `binary_to_decimal` that receives as input an array of size 8.
# The array is randomly filled with 0’s and 1’s.
# The most significant bit is at index 0.
# The least significant bit is at index 7.
# Calculate  and return the decimal value for this binary number using
# the algorithm you devised in class.
require 'pry'
def binary_to_decimal(binary_array)
  bit_count = 8
  dec = 0
  bit_count.times do |i|
    index = bit_count - i - 1
    dec += binary_array[index] * 2**i
  end
  return dec
end
