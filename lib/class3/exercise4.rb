# 5 points
#
# Write a program that displays all the leap years between 1900 and 2000.
#
# Leap years are years divisible by 4 (e.g. 1984).
#
# Years divisible by 100 are not leap years (e.g. 1900) unless they are also
# divisible by 400 (e.g. 2000).
#
# Tip: I expect you to use a loop and a few modulo operations.
#
y = 1900
while y <= 2000
  if y % 400 == 0
    puts y
  elsif y % 100 == 0
  elsif y % 4 == 0
    puts y
  end
  y += 1
end
