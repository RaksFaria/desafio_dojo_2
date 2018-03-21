class EditarCRM < SitePrism::Page
	
    #editar Tasks
	element :editataskes, "#grouptab_3"
	#submenu para editar
    element :clicatask, "#moduleTab_6_Tasks" 
	element :editandotask, "#edit-17b706b0-7c9f-c1a4-a54a-5ab14cdd1ed5"
	element :editanome, "#name"
	elements :botao_salvar_edicao, "#SAVE"
	
	def editar (editarnome)
		
        editataskes.click
		clicatask.click
		editandotask.click
		editanome.set(editarnome)
		botao_salvar_edicao.last.click


	end
    
end