print "Give me a number: "

number = gets.chomp.to_i

# if number > 20 returns true it will execute the piece of code
# between if / else
# if (number > 20) # brackets are optional in this case
if number > 20
  puts "The number is big"
# if the previous conditions are not met, it will check this condition
# and execute it if the (number > 10) returns true
elsif number > 10
  puts "The number is medium"
elsif number > 5
  puts "The number is small to medium"
# if the condition(s) above did not return true it will execute the
# piece of code between else / end
else
  puts "The number is small"
end

# this will print both is both conditions are met
# for instance if number is 25 it will print both
# "the number is big" and "The nubmer is medium"
# if number > 20
#   puts "the number is big"
# end
#
# if number > 10
#   puts "The nubmer is medium"
# end
#

# This will execute only one condition so it will print
# either "the number is big" or "The nubmer is medium"
# if number > 20
#   puts "the number is big"
# elsif number > 10
#   puts "The nubmer is medium"
# end
