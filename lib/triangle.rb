require 'pry'
class Triangle

  # write code here
  def initialize(a, b, c)
    @lengths = [a, b, c].sort
  end

  def kind
    raise TriangleError if @lengths[0] <= 0 || @lengths[0] + @lengths[1] <= @lengths[2]
    case @lengths.uniq.size
    when 1 then :equilateral
    when 2 then :isosceles
    else :scalene
    end
  end

  class TriangleError < StandardError
    def message
      "Each side must be greater than 0"
    end
  end
end

equal = Triangle.new(2, 2, 2)
isosce = Triangle.new(3, 4, 4)
scalene = Triangle.new(3, 4, 5)

