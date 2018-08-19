# A method named `binary_to_decimal` that receives as input an array of size 8.
# The array is randomly filled with 0’s and 1’s.
# The most significant bit is at index 0.
# The least significant bit is at index 7.
# Calculate  and return the decimal value for this binary number using
# the algorithm you devised in class.
def binary_to_decimal(arr)
  # Creating a blank new array the size of the original array
  reversed = Array.new(arr.length)
  # Starting decimal value at 0
  decimal = 0
  # Setting i to the last index of the array
  i = arr.length - 1
  arr.each do |number|
    # Adding numbers to reversed aray
    # Starting at end of original array
    reversed[i] = number
    # Decreasing value of i
    i -= 1
  end

  # Going through each index of the reversed array
  reversed.each_index do |index|
    # If number is not 0, add 2 ** index to decimal
    decimal += 2 ** index if reversed[index] != 0
  end
  return decimal
end
