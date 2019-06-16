#language: pt

Funcionalidade: Acessar home

    - Eu, como usuario
    - Quero acessar a home do neon
        @teste
        Esquema do Cenario: Acessar a home com sucesso

            Dado - que estou com o navegador aberto
            Quando - acesso a home do neon
            Entao valido a "<mensagem>" de ativar cartao
            Exemplos:
            |mensagem|
            |Não! Somos mais que um cartão, oferecemos uma conta digital. Muito mais simples, você movimenta sua conta e organiza a sua vida financeira direto no app =)|
        