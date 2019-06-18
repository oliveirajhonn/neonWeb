#language: pt

Funcionalidade: Login

    - Eu, como usuario
    - Quero acessar a pagina de login
        @login
          Cenario: validar a mensagem de login

            Dado - que estou na tela inicial
            Quando - seleciono o a opcao pejota
            E - seleciono o menu acessar minha conta
            E - preencho os dados
            Entao - valido a mensagem de login
