require 'sinatra'
require './config'
require './lib/batalla-galactica.rb'

get '/' do
    erb(:index)
end

post '/jugar' do
    bg = BatallaGalactica.new
    session["mensaje"] = bg.crea_tablero
    session["mensaje_nave"] = bg.crea_nave
    session["n_disparos"] = bg.get_n_disparos
    erb(:juego)
end

post '/disparar' do
    erb(:juego)
    bg = BatallaGalactica.new
    session["mensaje"] = bg.crea_tablero
    session["mensaje_nave"] = bg.crea_nave
    session["coordenadas_disparo"] = bg.disparar params["c1"], params["c2"],params["c3"]
    session["n_disparos"] = bg.get_n_disparos
    erb(:juego)
    
end