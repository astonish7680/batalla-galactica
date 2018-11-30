class BatallaGalactica
    
    def initialize
        @posicion_nave = 0
    end

    def crea_tablero
    end

    def crea_nave 
        @posicion_nave = rand(8).to_s(2)
        "La nave ha sido colocada exitosamente"
    end

    def disparar c1,c2,c3
        misil = (c1.to_s+c2.to_s+c3.to_s)
    end

    def coordenadas_nave
        @posicion_nave
    end

    def punteria coord_misil, coord_nave
        #puts coord_nave.to_i
        #puts coord_misil.to_i
        if coord_misil.to_i == coord_nave.to_i
            "GANASTE!"
        else
            "MISIL FALLIDO. SIGUE INTENTANDO!"
        end
    end

    def get_posicion_nave
        @posicion_nave
    end
end
