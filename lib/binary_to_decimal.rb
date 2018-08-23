# A method named `binary_to_decimal` that receives as input an array of size 8.
# The array is randomly filled with 0’s and 1’s.
# The most significant bit is at index 0.
# The least significant bit is at index 7.
# Calculate  and return the decimal value for this binary number using the algorithm you devised in class.


def binary_to_decimal(bnry)


  decimal = bnry[0] * 128 + bnry[1] * 64 + bnry[2] * 32 + bnry[3] * 16 + bnry[4] * 8 + bnry[5] * 4 + bnry[6] * 2 + bnry[7]

  return decimal

end
