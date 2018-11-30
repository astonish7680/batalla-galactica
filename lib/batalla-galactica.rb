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

    def coordenadas_nave
        @posicion_nave
    end

end
