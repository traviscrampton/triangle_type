class Triangle
  define_method(:initialize) do |s1, s2, s3|
    sides =[]
    sides.push(s1, s2, s3)
    sides.sort!()
    @side_1 = sides[0]
    @side_2 = sides[1]
    @side_3 = sides[2]
    binding.pry
  end

  define_method(:triangle?) do
    if @side_1 + @side_2 >= @side_3 #|| @side_1 + @side_3 <=@side_2 || @side_2+@side_3 <= side_1
      true
    else
      false
    end
  end
end
