#!/usr/bin/env ruby
#
# 5 points
#
# Eventually, someone thought it would be terribly clever if putting a smaller
# number before a larger one meant you had to subtract the smaller one. As a
# result of this development, you must now suffer.
#
# Rewrite your previous program so that, when passed any integer between 1 and
# 1000, it returns a string containing the proper modern Roman numeral. In other
# words:
#
#   $ ruby exercise5.rb 9
#   IX
#
# TIP #1: Here's a mapping of Roman to Arabic numerals:
#
#   1000 = M
#    900 = CM
#    500 = D
#    400 = CD
#    100 = C
#     90 = XC
#     50 = L
#     40 = XL
#     10 = X
#      9 = IX
#      5 = V
#      4 = IV
#      1 = I
#
# TIP #3: You only need to change the `modern_roman_numeral` method.

# rubocop:disable MethodLength
def modern_roman_numeral(num)
  roman_num = ''
  int = num

  return 'M' if num == 1000

  while int > 0
    if int.between?(900, 999)
      roman_num += 'CM'
      int -= 900
    elsif int.between?(500, 899)
      roman_num += 'D'
      int -= 500
    elsif int.between?(400, 499)
      roman_num += 'CD'
      int -= 400
    elsif int.between?(100, 399)
      roman_num += 'C' * (int / 100)
      int -= (int / 100) * 100
    elsif int.between?(90, 99)
      roman_num += 'XC'
      int -= 90
    elsif int.between?(50, 89)
      roman_num += 'L'
      int -= 50
    elsif int.between?(40, 49)
      roman_num += 'XL'
      int -= 40
    elsif int.between?(10, 39)
      roman_num += 'X' * (int / 10)
      int -= (int / 10) * 10
    elsif int.between?(0, 9)
      if int == 9
        roman_num += 'IX'
        int -= 9
      elsif int >= 5
        roman_num += 'V'
        int -= 5
      elsif int == 4
        roman_num += 'IV'
        int -= 4
      else
        roman_num += 'I' * int
        int -= int
      end
    end
  end

  roman_num
end

input = ARGV[0].to_i

abort 'Usage: exercise5.rb [1-1000]' unless input.between?(1, 1000)

puts modern_roman_numeral(input)
