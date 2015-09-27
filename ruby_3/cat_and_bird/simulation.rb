require "./cat.rb"
require "./bird.rb"

cat = Cat.new("Big", "Garfield")

bird_sizes = ["small", "medium", "large"]

bird_names = ["Lazzgnia", "Tweetie", "Eagle", "Canary"]

100.times do
  bird = Bird.new(bird_sizes.sample, bird_names.sample)
  cat.catch(bird)
  cat.eat
  puts "----------------"
end
