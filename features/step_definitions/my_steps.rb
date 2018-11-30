Given(/^que abri el juego$/) do
    visit('/')
  end
  
  When(/^click en "([^"]*)"$/) do |arg1|
    click_button("Comenzar")
  end
  
  Then(/^debo ver "([^"]*)"$/) do |arg1|
    "La matriz ha sido creada"
  end
  
  When(/^se realizo el acomodo de la nave$/) do
    "La nave ha sido ubicada"
  end
  
  Then(/^la nave debe ocupar una sola coordenada$/) do
    "La matriz tiene una posición ocupadas"
  end