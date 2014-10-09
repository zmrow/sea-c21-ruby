# 5 points
#
# Assuming leap-years don't exist, display the minutes are in a decade.
#
# TIP: I expect you to use a mathematical equation.
#

min = 60
hours = 24
days_in_year = 365
decade = 10
min_in_day = min * hours
min_in_year = min_in_day * days_in_year
min_in_decade = min_in_year * decade

puts 'There are ' + min_in_decade.to_s + ' minutes in a decade.'

