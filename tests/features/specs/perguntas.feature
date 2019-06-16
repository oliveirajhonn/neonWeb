#language: pt

Funcionalidade: Perguntas

    - Eu, como usuario
    - Quero acessar a home do neon
        @validar_resposta
           Esquema do Cenario:: validar respota da pergunta

            Dado - que estou na tela de perguntas
            Quando - seleciono a pergunta
            Entao valido a "<mensagem>" de ativar cartao
             Exemplos:
            |mensagem|
            |Não! Somos mais que um cartão, oferecemos uma conta digital. Muito mais simples, você movimenta sua conta e organiza a sua vida financeira direto no app =)|
            |teste negativo|
        
          