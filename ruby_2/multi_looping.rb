my_array = [[1,2,3], [4,5,6], [1,2,3], [4,5,6]]

my_array.each do |sub_array|
  sub_array.each do |mini_me|
    puts mini_me ** 2
  end
end

my_array.flatten.each do |number|
  puts number * number
end
