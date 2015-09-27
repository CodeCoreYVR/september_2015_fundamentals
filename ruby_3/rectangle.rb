class Rectangle

  def initialize(width, height)
    # @width, @height = width, height
    @width  = width
    @height = height
    # @area   = width * height
  end

  attr_accessor :width
  attr_accessor :height
  # attr_reader   :area

  def area
    width * height
  end

end
