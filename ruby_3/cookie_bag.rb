class CookieBag
  attr_reader :capacity
  attr_reader :cookies

  def initialize(capacity)
    @capacity = capacity
    @cookies  = []
  end

  def add(cookie)
    if @capacity > @cookies.length
      @cookies << cookie
    else
      puts "The bag is full"
    end
  end

  def take
    if @cookies.length == 0
      puts "The bag is empty"
    else
      @cookies.pop
    end
  end

end
