# A method named `binary_to_decimal` that receives as input an array of size 8.
# The array is randomly filled with 0’s and 1’s.
# The most significant bit is at index 0.
# The least significant bit is at index 7.
# Calculate  and return the decimal value for this binary number using
# the algorithm you devised in class.
def binary_to_decimal(binary_array)

  sum = 0
  exponent = binary_array.length-1

  binary_array.each do |x|
    step_calc = x * (2 ** (exponent))
    exponent -= 1
    sum += step_calc
  end

  return sum
  # raise NotImplementedError
end

# run_method = binary_to_decimal([1,1,0,1])
# puts "#{run_method}"
