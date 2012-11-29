
class Rectangle
  attr_accessor :width, :length

  def initialize(width,length)
    @width = width
    @length = length
  end

  def area
   (@width * @length).round(2)
  end

  def perimeter
   ((@width * 2) + (@length * 2)).round(2)
  end
end

r = Rectangle.new(23.45, 34.67)
puts "Area is = #{r.area}"
puts "Perimeter is = #{r.perimeter}"

