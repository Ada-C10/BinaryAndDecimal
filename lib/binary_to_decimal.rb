# A method named `binary_to_decimal` that receives as input an array of size 8.
# The array is randomly filled with 0’s and 1’s.
# The most significant bit is at index 0.
# The least significant bit is at index 7.
# Calculate  and return the decimal value for this binary number using
# the algorithm you devised in class.
def binary_to_decimal(binary_array)
	decimal = 0
	starting_exponent = 7
	binary_array.each do |digit|
    # multiply the digit by its corresponding 2^x and add to decimal
		decimal += digit.to_i * 2**starting_exponent
		starting_exponent -= 1 # decrement starting exponent
	end
	return decimal
end

# print "Enter an 8-bit binary number: "
# binary = gets.chomp
# puts "Result: #{binary_to_decimal(binary)}"
