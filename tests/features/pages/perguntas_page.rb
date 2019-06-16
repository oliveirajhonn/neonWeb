class Perguntas < SitePrism::Page
  #element :menu_perguntas, 'body > header > nav > ul > li:nth-child(3) > a'
  element :pergunta_e_so_um_cartao, 'body > main > article > div > div > ul:nth-child(10) > li:nth-child(3) > label'
  #'.accordion'
  # element :teste, 'body > main > article > div > div > ul:nth-child(10) > li:nth-child(3) > label > h4'
  element :resposta_e_so_um_cartao, 'body > main > article > div > div > ul:nth-child(10) > li:nth-child(3) > div > div > p:nth-child(1)'
  # funciona 'body > main > article > div > div > ul:nth-child(10) > li:nth-child(3) > div > div > p:nth-child(1)'
  # "//h4[contains(text(),'A Neon é só um cartão?')]"
  #
  def initialize()
    @menu_perguntas = 'Perguntas'
    #@pergunta_e_so_um_cartao = 'A Neon é só um cartão?'
  end
 
  def clicar_no_menu_perguntas
  # menu_perguntas.click
    # find_link('perguntas').click
    visit('')
   click_link(@menu_perguntas)
    
  
  end

  def selecionar_pergunta()
    
    pergunta_e_so_um_cartao.click
   #click_link(@pergunta_e_so_um_cartao)
   #find(:xpath, "//label[@class='heading-regular']//h4[contains(text(),'A Neon é só um cartão?')]")

    # pergunta_e_so_um_cartao.set '1'
    sleep(3)
    # click_button pergunta_e_so_um_cartao
  end

  def validar_resposta(resposta)
    if resposta_e_so_um_cartao.text.eql? resposta
      # 'Não! Somos mais que um cartão, oferecemos uma conta digital. Muito mais simples, você movimenta sua conta e organiza a sua vida financeira direto no app =)'
    else
      raise 'Resposta incorreta'
    end
  end

end
