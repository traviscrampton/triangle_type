require('rspec')
require('triangle?')
require('pry')

describe(Triangle) do
  describe("#triangle?") do
    it("returns false if it is not a triangle") do
      test_triangle = Triangle.new(30, 15, 10)
      expect(test_triangle.triangle?()).to(eq(false))
    end
    it("Returns Equilateral triangle if all sides are equal") do
      test_triangle = Triangle.new(10, 10, 10)
      expect(test_triangle.triangle?()).to(eq("Equilateral Triangle"))
    end
    it("Returns Isosceles if triangle has two equal sides") do
      test_triangle = Triangle.new(10,15,15)
      expect(test_triangle.triangle?()).to(eq("Isosceles Triangle"))
    end
  end
end
