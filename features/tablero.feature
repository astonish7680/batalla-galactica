Feature:

    Como jugador 
    quiero una nave ubicada en una matriz de 2x2x2 
    para poder comenzar el juego

Scenario:La matriz debe ser de 2x2x2
    Given que abri el juego
    When click en "Comenzar"
    Then debo ver "La matriz de 2x2x2 ha sido creada"

Scenario:El sistema debe ubicar una nave en la matriz
    Given que abri el juego
    When click en "Comenzar"
    Then debo ver "La nave esta en (1,1,1)"

Scenario:La nave debe ocupar una sola coordenada
    Given que abri el juego
    When click en "Comenzar"
    And se realizo el acomodo de la nave
    Then la nave debe ocupar una sola coordenada

