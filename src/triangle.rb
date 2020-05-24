# Triangle Project Code.

require 'set'
# Triangle analyzes the lengths of the sides of a triangle
# (represented by a, b and c) and returns the type of triangle.
#
# It returns:
#   :equilateral  if all sides are equal
#   :isosceles    if exactly 2 sides are equal
#   :scalene      if no sides are equal
#
# The tests for this method can be found in
#   about_triangle_project.rb
# and
#   about_triangle_project_2.rb
#
def triangle(a, b, c)
  raise TriangleError if [a,b,c].any? {|v| v <= 0}
  
  l = [a,b,c].sort
  raise TriangleError if l[0] + l[1] <= l[2]

  sides = Set[a, b, c]
  return :equilateral if sides.length == 1
  return :isosceles   if sides.length == 2
  :scalene
end

# Error class used in part 2.  No need to change this code.
class TriangleError < StandardError
end
