require './lib/batalla-galactica'

describe BatallaGalactica do

    it "Crea nave" do
        bg = BatallaGalactica.new
        resutado = bg.crea_nave
        expect(resutado).to eq ("La nave ha sido colocada exitosamente")
    end

    it "La nave debe tener coordenadas en binario" do
        bg = BatallaGalactica.new
        bg.crea_nave 
        coordenadas1 = bg.coordenadas_nave 
        expect(coordenadas1).to match /[01]+/m
    end

    it "Dispara" do
        bg = BatallaGalactica.new
        bg.crea_nave
        resultado = bg.disparar 1,0,1
        expect(resultado).to match /[01]+/m
    end

    it "Contador de Disparos" do
        bg = BatallaGalactica.new
        bg.crea_nave
        bg.disparar 1,0,1
        bg.disparar 1,1,1
        resultado = bg.get_n_disparos
        expect(resultado).to eq 2
    end
    
    
end