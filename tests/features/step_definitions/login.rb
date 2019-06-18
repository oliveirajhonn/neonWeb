Quando("- seleciono o a opcao pejota") do
  @login = Home.new
  @login.clicar_pejota()
end

E("- seleciono o menu acessar minha conta") do
  @pejota = Pejota.new
  @pejota.clicar_acessar_conta()  
end

E("- preencho os dados") do
  @login = Login.new
  @login.clicar_login()
  @login.clicar_botao_entrar()
end

Entao("- valido a mensagem de login") do
  @mensagem = Login.new
  @mensagem.validar_mensagem()
end
