class Person
    attr_accessor :name, :age
    @@people = []

    def initialize(name, age)
        @name = name
        @age = age
        @@people.push(self)
        p @@people
    end
end

new_person = Person.new("Ashley", 26)
new_person_2 = Person.new("Emily", 18)