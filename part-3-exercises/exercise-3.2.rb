class Animal
    attr_accessor :name, :animal_type, :color

    def initialize(name, animal_type, color)
        @name = name
        @animal_type = animal_type
        @color = color
    end

    def intro
        puts "Hey, my name is #{@name}. \nI am a #{animal_type}. \nMy fur color is #{@color}"
    end
end

dog = Animal.new("Clifford", "dog", "red")

puts dog.intro