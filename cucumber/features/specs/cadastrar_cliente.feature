#language:pt

@Cadastro
Funcionalidade: Cadastrar Clientes
    Sendo um usuário do ERP QANinja
    Posso cadastar novos clientes
    Para para gerenciar o meu negócio

Contexto: Login
  Dado que eu tenho um usuario com os seguintes atributos
      | Nome     | Email                 | Senha     | 
      | Fernando | fernandosqa@gmail.com | Teste#123 | 
  Quando faço login
  Então sou redirecionado para o Dashboard com a mensagem "Bem Vindo"

Cenario: Cadastro de cliente
  Dado que eu tenho um cadastro de cliente
  Quando faço o cadastro desse cliente
  Então vejo o cliente cadastrado na lista
  E faço logoff