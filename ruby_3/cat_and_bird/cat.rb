require "./animal.rb"

class Cat < Animal

  def catch(bird)
    random_number = rand(100)
    if random_number > 50
      @caught_bird = bird
    else
      puts "Missed...."
    end
  end

  def eat
    if @caught_bird
      puts "Eating #{@caught_bird.size} bird named #{@caught_bird.name}"
      @caught_bird = nil
    else
      puts "No bird to eat..."
    end
  end

end
