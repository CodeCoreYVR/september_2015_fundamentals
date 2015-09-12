# solution 1
print "How many repetitions: "
number = gets.chomp.to_i

x = 1
while x <= number
  puts "Hello World"
  x += 1
end

# solution 2
print "How many repetitions: "
number = gets.chomp.to_i

while number >= 1
  puts "Hello World"
  number -= 1
end
