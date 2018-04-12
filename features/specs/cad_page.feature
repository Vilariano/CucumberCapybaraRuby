#language:pt

Funcionalidade: Cadastro
	Sendo um visitante
	Posso fazer um cadastro
	Para ter acesso a area restrita a usuarios cadastrados

	Contexto: Fazer ou tentar Cadastro
		Dado que estou na pagina de Cadastro
	

	@Cadastro
	Cenario: Cadastro
	
	Quando preencho o formulario de cadastro com os dados:
		| Nome      | User01 SobNome01          |
		| Email     | user01.Sobnome01@mail.com |
		| Senha     | Senha01                   |
		| Cadastrar | Sim                       |
	Então sou direcionado para a pagina de Login vejo a seguinte mensagem:
		"""
		Usuário cadastrado com sucesso!
		"""

	@TentativaDeCadastro
	Esquema do Cenario: Tentativa de Cadastro
	
	Quando preencho o formulario de cadastro com os dados:
		| Nome      | <nome>      |
		| Email     | <email>     |
		| Senha     | <senha>     |
		| Cadastrar | <cadastrar> |
	Então vejo a seguinte mensagem de erro de cadastro:
		"""
		<mensagem>
		"""

	Exemplos:
	| nome             | email                     | senha   | cadastrar | mensagem                                      |
	|                  | user02.Sobnome02@mail.com | 123456  | Sim       | Necessário preencher todos os campos!         |
	| User02 SobNome02 |                           | 123456  | Sim       | Necessário preencher todos os campos!         |
	| User02 SobNome02 | user02.Sobnome02@mail.com |         | Sim       | Necessário preencher todos os campos!         |
	| User02 SobNome02 | user02.Sobnome02@mail.com | 12345   | Sim       | A senha deve ter no minímo 6 caracteres!      |
	| User03 SobNome03 | aejvilariano128@gmail.com | 123456  | Sim       | Este e-mail já está cadastrado                |
	| User04 SobNome04 | aaa@gmail.com             | 123'456 | Sim       | Caracter ( ' ) utilizado na senha é inválido! |