require "./cookie.rb"

class Oreo < Cookie
  attr_accessor :filling_type

  # this will redefine (or override) the eat method that got
  # inherited from the Cookie class
  def eat
    puts "So Yummy!"
  end

end
