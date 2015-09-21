print "Give me a sentence: "
sentence = gets.chomp

# This gives me an array called words that contains the words
# in the sentence
words = sentence.split

# Defining an empty array to be the new sentence that has
# each word capitalized
new_sentence = []

# Looping through the array of words
words.each do |word|
  # pushing each word capitalized to the new_sentence array
  new_sentence << word.capitalize
end

print new_sentence.join(" ")
