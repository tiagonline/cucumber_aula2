#language:pt

@Login
Funcionalidade: Login
    Sendo um usuário do ERP QANinja
    Posso logar no sistema
    Para quer os meus clientes e lançar faturas

Cenário: Login com sucesso
  Dado que eu tenho um usuario com os seguintes atributos
      | Nome     | Email                 | Senha     | 
      | Fernando | fernandosqa@gmail.com | Teste#123 | 
  Quando faço login 
  Então sou redirecionado para o Dashboard com a mensagem "Bem Vindo"
  E faço logoff

Esquema do Cenário: Login sem sucesso
  Dado que eu tenho um <Email> e <Senha>
  Quando faço login
  Então vejo a mensagem <Mensagem>
  
  Exemplos:
      | Email                    | Senha       | Mensagem                            | 
      | "fernandosqa@gmail.com"  | "Teste@123" | "Incorrect password [403]"          | 
      | "naoexiste@gmail.com"    | "Teste#123" | "User not found [403]"              | 
      | "fernandosqa##gmail.com" | "Teste#123" | "Please enter your e-mail address." | 


    