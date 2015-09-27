class Animal
  attr_reader :name
  attr_reader :size

  def initialize(size, name)
    @size, @name = size, name
  end

end
