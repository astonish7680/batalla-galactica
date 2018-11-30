require 'sinatra'
require './config'
require './lib/batalla-galactica.rb'

get '/' do
    erb(:index)
end

post '/juego' do
    bg = BatallaGalactica.new
    session["mensaje"] = bg.crea_tablero
    erb(:juego)
end

post '/disparar' do
    erb(:juego)
end