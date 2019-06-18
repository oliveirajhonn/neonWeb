class Pejota < SitePrism::Page
 
  def initialize()
    @acessar_conta = 'Acessar conta'
  end

  def clicar_acessar_conta
    click_link(@acessar_conta)
  end
end
