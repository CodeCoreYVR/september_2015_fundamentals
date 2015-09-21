print "give me a sentence: "

sentence = gets.chomp # gets.chomp.downcase

# if sentence.include? "c" || sentence.include? "C"
#   puts "There is a C in the sentence"
# else
#   puts "There is no C"
# end

if sentence.slice("c") == nil
  puts "There is a C in the sentence"
else
  puts "There is no C"
end

if sentence.downcase.include? "c"
  puts "There is a C in the sentence"
else
  puts "There is no C"
end
