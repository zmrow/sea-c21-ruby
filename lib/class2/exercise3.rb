# 5 points
#
# If a person is 1,160 million seconds old, display their age in years. As
# always, assume leap years don't exist.
#
seconds = 1_160_000_000
hours = (seconds / 60) / 60
days = hours / 24
years = days / 365

puts years
