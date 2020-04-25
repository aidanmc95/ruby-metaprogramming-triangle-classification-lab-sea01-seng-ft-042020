class Triangle
  attr_reader :side1, :side2, :side3

  @@all = []

  def initialize(side1, side2, side3)
    @side1 = side1
    @side2 = side2
    @side3 = side3

    @@all << self
  end

  def kind
    self.triangleerror
    if @side1 == @side2 and @side2 == @side3
      :equilateral
    elsif @side1 == @side2 or @side2 == @side3 or @side1 == @side3
      :isosceles
    else
      :scalene
    end
  end

  def triangleerror
    if @side1 + @side2 <= @side3
      raise TriangleError
    elsif @side2 + @side3 <= @side1
      raise TriangleError
    elsif @side3 + @side1 <= @side2
      raise TriangleError
    elsif (@side1 or @side2 or @side3) <= 0
      raise TriangleError
    end
  end

  def self.all
    @@all
  end

  class TriangleError < StandardError
  end
end
