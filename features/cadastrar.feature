#language: pt
#utf-8


Funcionalidade: Cadastrar dado no site SuiteCRM
Eu como usuario do site SuiteCRM
Quero cadastrar um dado
Para cadastrar dado com sucesso


@cadastrar
Esquema do Cenario: Cadastrar novo dado no site SuiteCRM
Dado que esteja logado no site SuiteCRM
Quando preencher os campos "<Subject>", "<Status>", "<Priority>", "<Description>"
Entao o cadastro sera efetuado com sucesso

Exemplos:
	| Subject  | Status       | Priority    | Description             |
	| Marvel   | Completed    |    Low      |    Marvel e legal       |
	
