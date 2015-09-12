# Solution 1
# print "give me a word: "
# word     = gets.chomp
# index    = 1
# sentence = ""
#
# while word != "quit"
#   if index.even?
#     sentence = sentence + " " + word.upcase
#   else
#     sentence = sentence + " " + word
#   end
#   print "Give me a word again: "
#   word  = gets.chomp
#   index += 1
# end
#
# puts sentence



# Solution 2

sentence = ""
counter  = 1

while true
  print "Give me a word: "
  word = gets.chomp
  break if word == "quit"
  if counter.even?
    sentence = sentence + " " + word.upcase
  else
    sentence = sentence + " " + word
  end
  counter += 1
end

puts sentence
