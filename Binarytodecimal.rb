# write a method that finds the decimal value of a binary number

def binary_to_decimal(bin_array)
  decimal = (bin_array[7] * 1) + (bin_array[6] * 2) + (bin_array[5] * 4) + (bin_array[4] * 8) + (bin_array[3] * 16) + (bin_array[2] * 32) + (bin_array[1] * 64) + (bin_array[0] * 128)
return decimal
end

puts "#{binary_to_decimal([1, 0, 1, 0, 1, 0, 1, 1])}"


# Author a method named array_equals that accepts two integer arrays as input parameters. The method should return true if the arrays contain the same count of elements, the element values in the array are the same and they are in the same exact order. Otherwise, the method should return false.
# Note: Do not use Array class methods for comparing the whole array at once. You may use array indexing to retrieve one element at a time, you may compare individual elements with each other and you may retrieve the length of an array. Do not use any other Ruby provided functions.

def array_equals(array1, array2)
  array1.length.times do
    if array1.length == array2.length && array1[0] == array2[0] && array1[1] == array2[1] && array1[2] == array2[2] && array1[3] == array2[3] && array1[4] == array2[4] && array1[5] == array2[5] && array1[6] == array2[6] && array1[7] == array2[7]
      return true
    else
      return false
    end
  end
end


puts "#{array_equals([1, 2, 3, 5], [1, 2, 3, 4, 5])}"
