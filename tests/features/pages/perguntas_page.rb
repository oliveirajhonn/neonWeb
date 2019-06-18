class Perguntas < SitePrism::Page
  include RSpec::Matchers
  element :pergunta_e_so_um_cartao, 'body > main > article > div > div > ul:nth-child(10) > li:nth-child(3) > label'
  element :resposta_e_so_um_cartao, 'body > main > article > div > div > ul:nth-child(10) > li:nth-child(3) > div > div > p:nth-child(1)'

  def initialize()
    @menu_perguntas = 'Perguntas'

  end

  def clicar_no_menu_perguntas
    visit('')
    click_link(@menu_perguntas)

  end

  def selecionar_pergunta()
    pergunta_e_so_um_cartao.click
    sleep(3)
  end

  def validar_resposta(resposta)
  if resposta_e_so_um_cartao.text.eql? resposta
  else
      raise 'Resposta incorreta'
  end
  end
end
