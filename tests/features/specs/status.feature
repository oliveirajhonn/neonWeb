#language: pt

Funcionalidade: Status

    - Eu, como usuario
    - Quero acessar a pagina de status
        @validar_status
          Cenario: validar status dos servicos

            Dado - que estou na tela inicial
            Quando - seleciono o menu status
            Entao - valido o status dos servicos
