#encoding: utf-8

Dado(/^que eu tenho um usuario com os seguintes atributos$/) do |table|
  @nome = table.hashes[0]['Nome']
  @usuario = table.hashes[0]['Email']
  @senha = table.hashes[0]['Senha']
end

Dado(/^que eu tenho um "([^"]*)" e "([^"]*)"$/) do |email, senha|
  @usuario = email
  @senha = senha
end

Quando(/^faço login$/) do
  visit '/'
  click_link 'Login'
  find('#login_email').set @usuario
  find('#login_password').set @senha
  find('button[type=submit]', text: 'ENTRAR').click
end

E(/^faço logoff$/) do
  click_link @usuario
  click_link 'Sair'
end

Então(/^sou redirecionado para o Dashboard com a mensagem "([^"]*)"$/) do |msg|
  bem_vindo = find('#page_title').text
  expect(bem_vindo).to eq "#{msg} #{@nome}!"
end

Então(/^vejo a mensagem "([^"]*)"$/) do |msg|
  resultado = find('.alert-warning').text
  expect(resultado).to eq msg
end



