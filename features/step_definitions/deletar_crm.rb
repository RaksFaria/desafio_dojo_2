Dado("que esteja logado no site SuiteCRM para deletar um dado") do
    @login = LoginCRM.new
	@login.load
	@login.login "will", "will" 
  end
  
  Quando("selecionar uma task para deletar") do
     @deletar = DeletarCRM.new
     @deletar.deletar

     
  end
  
  Entao("o dado nao e mais apresentado na tela") do
    
  end