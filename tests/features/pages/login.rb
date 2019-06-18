class Login < SitePrism::Page
  include RSpec::Matchers

  def initialize()
    @login = '#login-form-email'
    @botao_entrar = 'body > div.template-default.page-login > div > div:nth-child(3) > footer > div > div > div > div > div > button'
    @mensagem_login_invalido = '#parsley-id-5 > li'
  end

  def clicar_login
    acessar = find(@login)
    acessar.click
    acessar.set 'abc@hotmail.com'
  end

  def clicar_botao_entrar
    botao = find(@botao_entrar)
    botao.click
  end

  def validar_mensagem
    mensagem = find(@mensagem_login_invalido)
    texto = mensagem.text
    expect(texto).to eql 'Login inválido.'
  end
end
