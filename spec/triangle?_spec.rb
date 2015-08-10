require('rspec')
require('triangle?')
require('pry')

describe(Triangle) do
  describe("#triangle?") do
    it("returns false if it is not a triangle") do
      test_triangle = Triangle.new(30, 15, 10)
      expect(test_triangle.triangle?()).to(eq("Not a triangle"))
    end
    it("Returns Equilateral triangle if all sides are equal") do
      test_triangle = Triangle.new(10, 10, 10)
      expect(test_triangle.triangle?()).to(eq("Equilateral Triangle"))
    end
    it("Returns Isosceles if triangle has two equal sides") do
      test_triangle = Triangle.new(10,15,15)
      expect(test_triangle.triangle?()).to(eq("Isosceles Triangle"))
    end
    it("Returns Scalene if triangle has no equal sides") do
      test_triangle = Triangle.new(7,12,8)
      expect(test_triangle.triangle?()).to(eq("Scalene Triangle"))
    end
  end
end
