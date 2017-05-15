class Project
  def initialize (name, description)
    @name = name
    @description = description
    puts "Created project #{name}"
  end
  def name
    return @name
  end
  def elevator_pitch
    puts "I have a projected called #{@name} and it's #{@description}"
  end
end
project1 = Project.new("Project 1", "Description 1")
puts project1.name
puts project1.elevator_pitch
