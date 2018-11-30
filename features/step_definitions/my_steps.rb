Given(/^que abri el juego$/) do
    visit '/'
  end
  
  When(/^click en "([^"]*)"$/) do |arg1|
    click_button ("Comenzar")
  end
  
  Then(/^el sistema debe de crear una matriz de (\d+)x(\d+)x(\d+)$/) do |arg1, arg2, arg3|
    pending # Write code here that turns the phrase above into concrete actions
  end
  
  Then(/^debo ver "([^"]*)"$/) do |arg1|
    pending # Write code here that turns the phrase above into concrete actions
  end
  
  When(/^se realizo el acomodo de la nave$/) do
    pending # Write code here that turns the phrase above into concrete actions
  end
  
  Then(/^la nave debe ocupar una sola coordenada$/) do
    pending # Write code here that turns the phrase above into concrete actions
  end