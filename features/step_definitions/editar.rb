Dado("que esteja logado no site SuiteCRM para editar um dado") do
    @login = LoginCRM.new
	@login.load
	@login.login "will", "will" 
end

Quando("preencher o campo {string}") do |preenchernome|
    @editar = EditarCRM.new
    @editar.editar preenchernome

    @preencher = preenchernome
end

Entao("a edicao sera efetuado com sucesso") do 
       verdade = expect(@editar).to have_content(@preencher)
       puts verdade
 end