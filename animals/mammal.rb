puts "mammal linked"
class Mammal
  def initialize (health)
    @health = health
  end
  def show_health
    puts "The current health is #{@health}"
  end
end
