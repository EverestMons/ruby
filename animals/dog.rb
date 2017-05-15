require_relative 'mammal'
class Dog < Mammal
  def pet
    @health += 5
    puts "Health Level: #{@health}"
    return self
  end

  def walk
    @health -= 1
    puts "Health Level: #{@health}"
    return self
  end

  def run
    @health -= 10
    puts "Health Level: #{@health}"
    return self
  end
end

dog = Dog.new(50)
dog.walk.walk.walk.run.run.pet.show_health
