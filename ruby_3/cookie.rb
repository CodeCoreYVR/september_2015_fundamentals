# The first letter of the class name must be capital.
# when you start something in Ruby with a capital letter. Ruby
# treats as a "constant"
# the conenvtion is to use CamelCase which is done by capitalizing
# the first letter of every word and omitting all the spaces.
class Cookie

  def initialize(sugar_amount = 5, flour_amount = 10)
    @sugar_amount = sugar_amount
    @flour_amount = flour_amount
    # @calorie_count = (sugar_amount * 4) + (flour_amount * 5)
    puts "About to create a cookie object!"
  end

  def details
    puts "This cookie has #{@sugar_amount}g of sugar and #{@flour_amount}g of flour"
  end

  # this is sometimes called a GETTER method
  def sugar_amount
    @sugar_amount
  end

  attr_reader :flour_amount
  # is equivalent to doing:
  # def flour_amount
  #   @flour_amount
  # end

  # this is sometimes called a SETTER method
  def sugar_amount=(new_amount)
    @sugar_amount = new_amount
  end

  attr_writer :flour_amount
  # is equivalent to doing:
  # def flour_amount=(new_amount)
  #   @flour_amount = new_amount
  # end

  attr_accessor :chocolate_chip_count
  # is equivalent to:
  # attr_reader :chocolate_chip_count
  # attr_writer :chocolate_chip_count

  # 1g of sugar has 4 calories
  # 1g of flour has 5 calories
  def calorie_count
    total = (@sugar_amount * 4) + (@flour_amount * 5)
    puts "This cookie has #{total} calories"
  end

  # this defines a method for the Cookie class. We call this
  # an instance method which means you call this method on object.
  # for instance:
  # c = Cookie.new
  # c.bake
  # This is considered a "public" method which means I can call
  # this methods from outside this class such as irb or other
  # classes
  def bake
    # I'm able to call a private method from here but not from
    # outsdie the class
    prepare
    # defining a variable with an @ before it makes it an instance variable
    # intance variables are accessible in all private and public instance
    # method within a given object
    @a = rand(1000)
    puts "Baking the cookie!"
  end

  def eat
    puts @a
    puts "Nom Nom Nom..."
  end

  # this defines a public class method called info. This can be called:
  # Cookie.info
  # no need to instantiate an object in order to call class methods
  def self.info
    puts "I'm a Cookie class"
  end

  # all methods defined after this private keyword will be considered
  # private methods which means you can call them within this class
  private

  def prepare
    puts "Preparing the cookie!"
  end

end
