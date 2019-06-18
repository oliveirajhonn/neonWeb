class Status < SitePrism::Page
  elements :cartao_debito_fisico, "body>section>main>div>section>div>div:nth-child(2)>div>p"
  element :status, 'body > section > main > div > sectionss > div > div:nth-child(2) > div > span'

  def initialize()
    @cartao_debito_fisico = 'body>section>main>div>section>div>div:nth-child(2)>div>p'
    @status = 'body > section > main > div > section > div > div:nth-child(2)'
  end

  def valida_status_servico
    find(@cartao_debito_fisico).text
    @cartao_debt_fisico.eql? 'Cartão de débito físico'
    status_servicos = has_status? ? 'Status on' : 'Status off'
    if status_servicos.eql? 'Status on'
      puts 'servico disponivel'
    else
      raise 'Servico indisponivel'
    end
  end
end
