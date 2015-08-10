require ('sinatra')
require ('sinatra/reloader')
also_reload('./lib/**/*.rb')
require('./lib/triangle?')

get('/') do
  erb(:index)
end

get('/result') do
  side_1 = params.fetch('side 1')
  side_2 = params.fetch('side 2')
  side_3 = params.fetch('side 3')
  @triangle = Triangle.new(side_1, side_2, side_3)
  erb(:result)
end
