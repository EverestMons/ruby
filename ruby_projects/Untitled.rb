class Car

  def drive
    puts "Vroom, Vroom"
  end

  def stop
    puts "Screeeeeeech"
  end

  def calling
    honk
  end


  def calling_cry
    cry
  end

  private
    def cry
      puts "sniff sniff"
    end
end
class Truck < Car

  def move
    drive
  end

  def cease
    stop
  end

  def explicitily_honk
    self.honk
  end

  def implicitily_honk
    honk
  end

  def explicitly_cry
    self.cry
  end

  def implicitily_cry
    cry
  end
end

car = Car.new
car.calling_cry

hummer = Truck.new
hummer.implicitily_cry
