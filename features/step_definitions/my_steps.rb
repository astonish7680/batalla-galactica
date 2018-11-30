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

  Given(/^un juego preparado$/) do
    visit('/')
    click_button("Comenzar")
  end
  
  When(/^realizo un disparo$/) do
    click_button("Disparar")
  end
  
  Then(/^la coordenada debe tener el formato "([^"]*)"$/) do |text|
    expect(page.body).to match /#{text}/m
  end

  Then(/^El historico contiene "([^"]*)"$/) do |text|
    expect(page.body).to match /#{text}/m
  end
  
  Then(/^El historico debe estar vacio "([^"]*)"$/) do |text|
    expect(page.body).to match /#{text}/m
  end
  
  When(/^realizo un disparo "([^"]*)"$/) do |arg1|
    click_button("c1")
    click_button("c2")
    click_button("c3")
  end
  