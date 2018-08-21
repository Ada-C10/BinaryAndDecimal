# Jacquelyn Cheng

# Write a program to print all possible values that can be
# represented using 4 bits. e.g. 0000, 0001, 0010, 0011, 0100
# ... and so on.

def print_all_4bits
  bits = [false, false, false, false]
  2.times do
    2.times do
      2.times do
        2.times do
          bits.each do |bit|
            print bit ? 1 : 0
          end
          puts
          bits[3] = !bits[3]
        end
        bits[2] = !bits[2]
      end
      bits[1] = !bits[1]
    end
    bits[0] = !bits[0]
  end
end

puts "The 4-bit binary numbers are:"
print_all_4bits
