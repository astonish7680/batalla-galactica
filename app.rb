require 'sinatra'
require './config'

get '/' do
    erb(:index)
end

post '/juego' do
    bg = BatallaGalactica.new
    bg.crea_tablero
    erb(:juego)
end
