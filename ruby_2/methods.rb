def addition(a, b)
  a + b
end

puts addition(3,4)
puts addition 6,7

def multiply(a, b=1)
  a * b
end

puts multiply(5,6)
puts multiply(6)

def by_five?(number)
  if number % 5 == 0
    true
  else
    false
  end
end

def by_five?(number)
  number % 5 == 0
end

puts by_five?(10)
puts by_five?(4)
