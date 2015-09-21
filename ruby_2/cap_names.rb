# name_array = %w(scott kathy tam hong)
name_array = ["scott", "kathy", "tam", "hong"]

new_name_array = []

name_array.each do |name|
  y = name.capitalize
  new_name_array << y
  puts y
end

print new_name_array
