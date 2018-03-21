class LoginCRM < SitePrism::Page

	set_url "https://demo.suiteondemand.com/index.php?module=Users&action=Login"

	element :login_crm, "#user_name"
	element :senha_crm, "#username_password"
	element :botao_logar, "#bigbutton"

	def login (usuario, password)
		login_crm.set(usuario)
		senha_crm.set(password)
        botao_logar.click
	end

end