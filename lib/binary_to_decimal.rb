# A method named `binary_to_decimal` that receives as input an array of size 8.
# The array is randomly filled with 0’s and 1’s.
# The most significant bit is at index 0.
# The least significant bit is at index 7.
# Calculate  and return the decimal value for this binary number using
# the algorithm you devised in class.

# first way to do it taking out reverse
# def binary_to_decimal(binary_array)
#   decimal = 0
#   count = 7
#
#   binary_array.each do |num|
#     decimal += (num * (2**count))
#     count -= 1
#   end
#
#   return decimal
# end

# Using times loop and count

def binary_to_decimal(binary_array)
  decimal = 0
  count = binary_array.length

  count.times do |index|
    decimal += (binary_array[index] * (2**(count-1-index)))
  end

  return decimal
end
