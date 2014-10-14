# The secret of getting ahead is getting started.
# - Mark Twain
#
while true
  puts 'What would you like to ask C to do?'
  request = gets.chomp

  puts 'You say, "C, please ' + request + '"'

  puts "C's response:"
  puts '"Papa ' + request + '."'
  puts '"Mama ' + request + '."'
  puts '"Ruby ' + request + '."'
  puts '"Nono ' + request + '."'
  puts '"Emma ' + request + '."'
  puts

  if request == 'stop'
    break
  end
end


