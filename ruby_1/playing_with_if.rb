if 1
  puts "Hello World"
end

if "asdfaksdfjalksdfja"
  puts "Hey"
end

if nil
  puts "I'm in nil"
end

a = gets.to_i

# this will always execute because we're assigning a variable
# in the if statement which will is not false or nil so
# it will always be true and it will always execute.
# you shouldn't assign a variable in the if statement
# you should use ==
# Ruby will generally show a warning
if a = 2
  puts "a is 2"
end

b = get.to_i

if b > 10
  puts "Big number"
else
  puts "Small number"
end

puts (b > 10) ? "Big number" : "Small number"
