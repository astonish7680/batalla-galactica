Feature: Disparo


   Como jugador
   Quiero poder realizar un disparo de misil
   Para poder derribar una nave y ganar el juego

Scenario: El disparo debe tener coordenadas en 3 dimensiones
    Given un juego preparado
    When realizo un disparo
    Then la coordenada debe tener el formato "1,1,1"



