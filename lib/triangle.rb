# class Triangle
#   # write code here
#   attr_reader :a, :b, :c

#   def initialize(a, b, c)
#     @a =a
#     @b =b 
#     @c =c
    
#   end

#   def kind
#     validate_triangle
#    if a == b && a == c
#     :equilateral
    
#    elsif a== b || a ==c || b == c
#     :isosceles

#    elsif 
#     :scalene
#    end
   
#   end

#   def sides_greater_than_zero?
#     [a, b, c].all? > 0
    
#   end

#   def equal_triangles?
#     a + b > c && b + c >a
    
#   end

#   def validate_triangle
#     raise TriangleError unless sides_greater_than_zero? && equal_triangles?
      
#     end
    
#   end

#   class TriangleError < StandardError
#   end
class Triangle
  attr_reader :a, :b, :c
  
  def initialize(a, b, c)
    @a = a
    @b = b
    @c = c
  end

  def kind
    validate_triangle
    if a == b && b == c
      :equilateral
    elsif a == b || b == c || a == c
      :isosceles
    else
      :scalene
    end
  end

  def sides_greater_than_zero?
    [a, b, c].all?(&:positive?)
  end

  def equal_triangles?
    a + b > c && a + c > b && b + c > a
  end

  def validate_triangle
    raise TriangleError unless sides_greater_than_zero? && equal_triangles?
  end

  class TriangleError < StandardError
  end

end