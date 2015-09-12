print "Give me a number: "
number   = gets.chomp
# We need to call .to_f on the number variable because we need it
# to be a float in order to perform the multiplication.
# by default the input from the gets method from the user will always
# be a string
multiply = number.to_f * 5
puts "The result of multiplying your number by 5 is #{multiply}"
