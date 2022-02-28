class Rectangle
    attr_accessor :length, :width

    def initialize(length, width)
        @length = length
        @width = width
    end

    def area
        @width * @length
    end

    def perimeter
        @width + @width + @length + @length
    end
end

new_rectangle = Rectangle.new(5, 6)

puts new_rectangle.area