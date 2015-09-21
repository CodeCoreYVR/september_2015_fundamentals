my_hash = { "BC" => ["Vancouver", "Richmond"],  "AB" => ["Edmonton", "Calgary"]}

my_hash.each do |province, cities|
  puts "#{province}: #{cities.join(', ')}"
end
