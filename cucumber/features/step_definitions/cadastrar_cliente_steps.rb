#encoding: utf-8

Dado(/^que eu tenho um cadastro de cliente$/) do
  @nome = Faker::Name.name
  @telefone = "9#{Faker::Number.number(8)}"
  @email = Faker::Internet.email
  @obs = Faker::Lorem.paragraph
end

Quando(/^faço o cadastro desse cliente$/) do
  click_link 'Clientes'
  find('#dataview-insert-button').click
  fill_in('name', with: @nome)
  fill_in('phone', with: @telefone)
  fill_in('email', with: @email)
  fill_in('note', with: @obs)
  find('#form-submit-button').click
end

Então(/^vejo o cliente cadastrado na lista$/) do
  sleep(2)
  find('#dataview-table-items tr td', text: @nome)
  find('#dataview-table-items tr td', text: @telefone)
  find('#dataview-table-items tr td', text: @email)
end