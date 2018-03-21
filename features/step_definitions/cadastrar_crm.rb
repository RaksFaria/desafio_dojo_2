Dado("que esteja logado no site SuiteCRM") do
    @login = LoginCRM.new
	@login.load
	@login.login "will", "will" 
end

Quando("preencher os campos {string}, {string}, {string}, {string}") do |sujeitocrm, statuscrm, prioridadecrm, descricaocrm|
    @cadastrar = CadastroCRM.new
    @cadastrar.cadastrar sujeitocrm, statuscrm, prioridadecrm, descricaocrm

    @cadastracoisas = sujeitocrm
end

Entao("o cadastro sera efetuado com sucesso") do
       verdade = expect(@cadastrar).to have_content(@cadastracoisas)
       puts verdade
 end