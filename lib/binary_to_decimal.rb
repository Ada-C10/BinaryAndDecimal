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


def binarize(integer)
  # validate integer >= 0
  raise ArgumentError if integer.class != Integer || integer < 0

  return [0] if  integer == 0

  # Find n, the greatest power of 2 that fits into integer
  n = 0
  # increment n if the next power of two fits into integer 
  while 2**(n+1) <= integer
    n+= 1 
  end 
  
  binary_array = [1]
  remainder = integer - (2**n)

  (1..n).each do |i|
  # if the prev remainder was a power of two,
  # the rest of the array is 0s
    if remainder == 0
      binary_array << 0
  # if the next power of 2 fits into remainder,
  # add 1 to array and get new remainder
    elsif (remainder - 2**(n-i)) >= 0
      binary_array << 1
      remainder -= 2**(n-i)
    else 
  # if the next power of 2 does not fit,
  # add 0 to array and do not alter remainder
      binary_array << 0
    end
  end

  return binary_array
end

p binarize(0)
p binarize(1)
p binarize(2)
p binarize(4)
p binarize(5)
p binarize(14)
p binarize(15)
p binarize(16)
p binarize(17)

# binarize(-1) # => ArgumentError
