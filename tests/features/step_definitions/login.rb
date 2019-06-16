Dado("- que estou com o navegador aberto") do   
  visit("perguntas") 
  @homeV = Home.new
  @homeV.acessar_browser()                             
  
  
   sleep(5)                                         
end

  Quando("- acesso a home do neon") do |table|                                        
    # table is a Cucumber::MultilineArgument::DataTable                               
    pending # Write code here that turns the phrase above into concrete actions       
  end

  Entao("valido a mensagem de ativar cartao") do                                      
    pending # Write code here that turns the phrase above into concrete actions       
  end                                                                                                                                                                    