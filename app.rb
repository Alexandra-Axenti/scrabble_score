require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')
require('./lib/scrabble_score')

get('/') do
  erb(:form)
end

get('/display') do
  @words = params.fetch('sentence').scrabble_score()
  erb(:display)
end
