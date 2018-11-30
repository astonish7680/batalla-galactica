Feature: Historico

   Como jugador
   Quiero poder verificar los disparos realizados
   Para poder saber el resultado de los tiros

Scenario: Al iniciar el juego no debe tener información en el historico
    Given un juego preparado
    Then El historico contiene "Historico: 0"


Scenario: Al realizar un disparo en 1,1,1 debo de ver mi disparo en el historico
    Given un juego preparado
    When realizo un disparo
    Then El historico contiene "Historico: 1"
