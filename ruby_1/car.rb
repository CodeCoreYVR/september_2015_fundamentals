print "What is the year of your car? "
car_year = gets.chomp.to_i

if car_year > 2015
  puts "Your car is form the future"
elsif car_year > 2010
  puts "Your car is new"
elsif car_year > 2000
  puts "Your car is old"
else
  puts "Your car is very old"
end
