require_relative 'mammal'
class Lion < Mammal
  def initialize
    @health = 150
  end

  def fly
    @health -= 10
    puts "health decreased by 10"
    return self
  end

  def attack_town
    @health -= 50
    puts "you attacked a town and lost 50 health"
    return self
  end

  def eat_humans
    @health += 20
    puts "a yummy human increased health by 20"
    return self
  end

  def show_health
    puts "This is a lion"
    super
  end

end
lion = Lion.new
lion.attack_town.attack_town.attack_town.eat_humans.eat_humans.fly.fly.show_health
