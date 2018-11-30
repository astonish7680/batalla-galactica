require './lib/batalla-galactica'

describe BatallaGalactica do
    it "Inicia Juego" do
        bg = BatallaGalactica.new
        resutado = bg.crea_tablero
        expect(resutado).to eq ("La matriz de 2x2x2 ha sido creada")
    end
    
    it "Crea nave" do
        bg = BatallaGalactica.new
        resutado = bg.crea_nave
        expect(resutado).to eq ("La nave ha sido colocada en 1,1,1")
    end

    it "Dispara" do
        bg = BatallaGalactica.new
        bg.crea_nave
        resutado = bg.disparar 1,1,1
        expect(resutado).to eq ("111")
    end    
end