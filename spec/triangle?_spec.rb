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
  end
end
