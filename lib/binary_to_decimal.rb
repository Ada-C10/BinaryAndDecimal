# A method named `binary_to_decimal` that receives as input an array of size 8.
# The array is randomly filled with 0’s and 1’s.
# The most significant bit is at index 0.
# The least significant bit is at index 7.
# Calculate  and return the decimal value for this binary number using
# the algorithm you devised in class.

def decimalize(binary_array)

  raise ArgumentError unless binary_array.class == Array
  decimal = 0
  n = binary_array.length
  n.times do |i|
    least_bit = binary_array[n-i-1]
    raise ArgumentError unless least_bit.class == Integer && least_bit >= 0
    decimal += least_bit * 2**i
  end
  return decimal
end

decimalize([1,0,1]) # => 5 
decimalize([0,0,0]) # => 0

# decimalize(nil) # => ArgumentError
# decimalize([nil]) # => ArgumentError
# decimalize() # => wrong number of arguments (given 0, expected 1)
# decimalize([0,-1,0]) # => ArgumentError

# Time complexity is O(n): we touch every array element exactly once
# Space compleity is O(1): we allocate a constant amount of space for extra variables that does not change as the array becomes arbitrarily large
