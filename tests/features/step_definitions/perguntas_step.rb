
Dado("- que estou na tela de perguntas") do
  @perguntas = Perguntas.new
  @perguntas.clicar_no_menu_perguntas()
  
end

  Quando("- seleciono a pergunta") do
    @perguntas = Perguntas.new
    @perguntas.selecionar_pergunta()
    
   
  end
  
  Entao("valido a {string} de ativar cartao") do |string| 
    @perguntas = Perguntas.new
    @perguntas.validar_resposta(string)
    
    sleep(5)
  end