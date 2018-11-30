require './lib/batalla-galactica.rb'

describe BatallaGalactica do
    it "Inicia Juego" do
        bg = BatallaGalactica.new
        resutado = bg.crea_tablero
        expect(resutado).to eq ("La matriz de 2x2x2 ha sido creada")
    end 

end