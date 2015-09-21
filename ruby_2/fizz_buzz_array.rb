array = [] # array = Array.new

for number in 1..100
  if number % 3 == 0 && number % 5 == 0
    array << "FIZZBUZZ"
  elsif number % 3 == 0
    array << "FIZZ"
  elsif number % 5 == 0
    array << "BUZZ"
  else
    array << number
  end
end

print array
