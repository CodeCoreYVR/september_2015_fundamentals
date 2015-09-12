print "Give me your mark: "

# in this case we don't need to put the .chomp method because
# when converting a string into an integer or a float in Ruby
# it starts converting numbers until reaching a non-number character
# it ignores every character after that.
final_mark = gets.to_f

if final_mark >= 80
  puts "A"
elsif final_mark >= 70
  puts "B"
elsif final_mark >= 60
  puts "C"
elsif final_mark >= 50
  puts "D"
else
  puts "F"
end
