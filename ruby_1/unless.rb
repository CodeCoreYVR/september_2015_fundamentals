a = gets.to_i

if a > 10
  puts "The number is big"
end

if !(a <= 10)
  puts "The number is big"
end

unless a <= 10
  puts "The number is big"
end

# inline conditionals
b = 10 if a > 10
b = 10 unless a <= 10
