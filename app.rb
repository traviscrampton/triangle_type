require ('sinatra')
require ('sinatra/reloader')
also_reload('./lib/**/*.rb')
require('./lib/triangle?')

get('/') do
  erb(:index)
end

get('/result') do
  s1 = params.fetch('side 1').to_i()
  s2 = params.fetch('side 2').to_i()
  s3 = params.fetch('side 3').to_i()
  @triangle = Triangle.new(s1, s2, s3)
  erb(:result)
end
