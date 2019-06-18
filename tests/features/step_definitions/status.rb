Dado('- que estou na tela inicial') do
  @home = Home.new
  @home.acessar_o_site()
end

Quando('- seleciono o menu status') do
  @home = Home.new
  @home.clicar_menu_status()
end

Entao('- valido o status dos servicos') do
  @status = Status.new
  @status.valida_status_servico()
end