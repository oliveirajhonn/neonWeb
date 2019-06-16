class Home < SitePrism::Page
    #mapear elementos
    #criar metodos
    #@@menu_perguntas = "Perguntas"
    
   element :menu_perguntas, "body > header > nav > ul > li:nth-child(3) > a"
   element :pergunta_e_so_um_cartao, "//h4[contains(text(),'A Neon é só um cartão?')]"
   element :resposta_e_so_um_cartao, "/html/body/main/article/div/div/ul[5]/li[3]/div/div/p[1]/text()"
   
   # @page = home.new
    
def acessar_browser
    
 

   find_link(menu_perguntas).click
   
   #binding.pry
   #menu_perguntas.click
    
end
    #@Page.elemento.click
   # @Page.metodo
end