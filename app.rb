require 'sinatra'
require './config'
require './lib/batalla-galactica.rb'
enable :sessions

get '/' do
    erb(:index)
end

post '/jugar' do
    session["bg"] = BatallaGalactica.new
    session["mensaje"] = session["bg"].crea_tablero
    session["mensaje_nave"] = session["bg"].crea_nave
    session["n_disparos"] = session["bg"].get_n_disparos
    session["lista_disparos"] = session["bg"].get_lista_disparos
    erb(:juego)
end

post '/disparar' do
    erb(:juego)
    bg = session["bg"]
    session["mensaje"] = bg.disparar params["c1"], params["c2"],params["c3"]
    session["mensaje_nave"] = bg.punteria session["mensaje"], bg.get_posicion_nave
    session["n_disparos"] = bg.get_n_disparos
    session["lista_disparos"] = bg.get_lista_disparos
    erb(:juego)
end