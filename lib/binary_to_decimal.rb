# A method named `binary_to_decimal` that receives as input an array of size 8.
# The array is randomly filled with 0’s and 1’s.
# The most significant bit is at index 0.
# The least significant bit is at index 7.
# Calculate  and return the decimal value for this binary number using
# the algorithm you devised in class.

=begin
push each value to an bin_num array
loop through bin num array and powers array by 7 - index
e.g. 00000001 => 1 * (2**0) or 1
push product of each bin num array and powers array to new sum array
add up the total to get the decimal number
=end
require 'pry'
def get_binary
  binary_array = []
  8.times do
    print "Please enter a 0 or 1: "
    num = gets.chomp
    if !['0', '1'].include?(num) || num.size > 1
      print 'You may only enter a 0 or 1: '
      num = gets.chomp
    end
    binary_array << num.to_i
  end
  return binary_array
end


def binary_to_decimal(binary_array)
  # p binary_array
  sum_nums_arr = []
  binary_array.each_with_index do |num, i|
    k = 7 - i
    product = num * (2**k)
    sum_nums_arr << product
    # binding.pry
  end

  dec_num = 0
  sum_nums_arr.each do |num|
    dec_num += num
    # binding.pry
  end
  return dec_num
  raise NotImplementedError
end

puts "Welcome to the binary to decimal converter."
puts "You will enter an 16 bit decimal number in the form of 8 0's or 1's."
bin_arr = get_binary
puts "Converting #{bin_arr} to decimal..."
p binary_to_decimal(bin_arr)
