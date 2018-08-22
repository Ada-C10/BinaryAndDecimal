# A method named `binary_to_decimal` that receives as input an array of size 8.
# The array is randomly filled with 0’s and 1’s.
# The most significant bit is at index 0.
# The least significant bit is at index 7.
# Calculate  and return the decimal value for this binary number using
# the algorithm you devised in class.

def binary_to_decimal(binary_array)

  n = 0
  expected_decimal = 0

  expected_decimal += binary_array[7].to_i * (2**(n))
  puts expected_decimal
  n += 1

  expected_decimal += binary_array[6].to_i * (2**(n))
  puts expected_decimal
  n += 1

  expected_decimal += binary_array[5].to_i * (2**(n))
  puts expected_decimal
  n += 1

  expected_decimal += binary_array[4].to_i * (2**(n))
  puts expected_decimal
  n += 1

  expected_decimal += binary_array[3].to_i * (2**(n))
  puts expected_decimal
  n += 1

  expected_decimal += binary_array[2].to_i * (2**(n))
  puts expected_decimal
  n += 1

  expected_decimal += binary_array[1].to_i * (2**(n))
  puts expected_decimal
  n += 1

  expected_decimal += binary_array[0].to_i * (2**(n))

  return expected_decimal
end

# raise NotImplementedError
