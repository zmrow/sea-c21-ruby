#!/usr/bin/env ruby
#
# 5 points
#
# Write a program that displays the following table of 90's Hip-Hop hits:
#
#   $ ruby exercise2.rb
#   Can I Kick It?      A Tribe Called Quest     1991
#   Rump Shaker         Wreckx-n-Effect          1992
#   Check Yo Self       Ice Cube                 1993
#   Regulate            Warren G & Nate Dogg     1994
#   I Got 5 On It       Luniz                    1995
#   Ready Or Not        The Fugees               1996
#
# TIP #1: Hold all of the information -- song, artist, and year -- in an array.
#
# TIP #2: Use the `string.ljust` method from class 2 exercise 7.
#
# TIP #3: The width of each line is 50 characters.
song = ['Can I Kick It?', 'Rump Shaker', 'Check Yo Self', \
        'Regulate', 'I Got 5 On It', 'Ready Or Not']
group = ['A Tribe Called Quest', 'Wreckx-n-Effect', 'Ice Cube', \
         'Warren G & Nate Dogg', 'Luniz', 'The Fugees']
y = [1991, 1992, 1993, 1994, 1995, 1996]

(0..5).each do |x|
  puts "#{song[x]}".ljust(20) + "#{group[x]}".ljust(26) + "#{y[x]}".ljust(4)
end
