require('sinatra')
require('sinatra/reloader')
require('./lib/scrabble')
also_reload('lib/**/*.rb')


get('/') do
  erb(:index)
end

get('/result') do
 @score = params.fetch('scrabble').scrabble()
  erb(:result)
end
