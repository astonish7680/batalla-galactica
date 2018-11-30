class BatallaGalactica
    
    def initialize
        @tablero = {}
        @posicion_nave = 0
    end

    def crea_tablero
        @tablero = {
            "0,0,0"=>0,
            "0,0,1"=>1,
            "0,1,0"=>2,
            "0,1,1"=>3,
            "1,0,0"=>4,
            "1,0,1"=>5,
            "1,1,0"=>6,
            "1,1,1"=>7,
        }
        "La matriz de 2x2x2 ha sido creada"
    end

    def crea_nave
        @posicion_nave = rand(8)
        "La nave ha sido colocada en 1,1,1"
    end

    def disparar c1,c2,c3
        #@posicion_nave = rand(8)
        c1.to_s+c2.to_s+c3.to_s
    end


end
