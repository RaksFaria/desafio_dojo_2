class CadastroCRM < SitePrism::Page

	
    ##quickcreatetop > a
	element :create,  "#quickcreatetop"
	element :create_task, ".last"
    element :subject, "#name"
    element :statuscrm, "#status"
    element :prioridade, "#priority"
    element :descricao, "#description"
    elements :botao_salvar, "#SAVE"

	def cadastrar (sujeito, crmstatus, crmprioridade, crmdescricao)
		create.click
		create_task.click
        subject.set(sujeito)
        statuscrm.select(crmstatus)
        prioridade.select(crmprioridade)
        descricao.set(crmdescricao)
        botao_salvar.last.click
	end

end