my_array = [1,4,5,6,7,8]

# calling .each will iterate through an array and gives you whatever
# you put inside the pipes (in this it's num) as the current element
# you're iterating through. so num will be 1 then 4 then 5...etc
# the code inside the block will be executed for every element
my_array.each do |num|
  y = num + 5
  puts y
end
