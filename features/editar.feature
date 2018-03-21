#language: pt
#utf-8


Funcionalidade: Editar dado do site SuiteCRM
Eu como usuario do site SuiteCRM
Quero editar um dado
Para efetuar a edicao com sucesso

@editarcadastro
Esquema do Cenario: Editar um dado no site SuiteCRM
Dado que esteja logado no site SuiteCRM para editar um dado
Quando preencher o campo "<nomeeditar>"
Entao a edicao é validada com sucesso 

Exemplos:
	| nomeeditar  |
	| Tomb      | 