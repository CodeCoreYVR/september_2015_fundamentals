class Car

  def self.max_speed
    200
  end

  def drive
    ignite_engine
    puts "I'm driving!!"
  end

  def stop

    puts "Stop the car!!!!!!!!!!!!!!!!!!"
  end

  def park
    # this method will actuall print: Get out!!
    # and it will return nil because the puts method from Ruby
    # returns nil and it's the last statement in the method
    puts "Get out!!"
  end

  private

  def pump_gas
    puts "pump gas...."
  end

  def ignite_engine
    puts "start engine....."
  end

end
