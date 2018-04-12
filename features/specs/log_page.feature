#language:pt
Funcionalidade: Login
	Sendo um usuario cadastrado
	Posso fazer um login
	Para ter acesso a area restrita

	Contexto: Fazer ou tentar Login
		Dado que estou na pagina de login
	
	@Login
	Cenario: Login
		
		Quando preencho o formulario de login com os dados:
			|Email|aejvilariano128@gmail.com|
			|Senha|123456|
			|Login|Sim|
		Então vejo a seguinte mensagem de logado:
			"""
			Olá Agnaldo Vilariano, Seja bem vindo(a) a área restrita!
			"""
	@TentLogin
	Esquema do Cenario: Tentativa De Login

		Quando preencho o formulario de login com os dados:
			| Email | <email> |
			| Senha | <senha> |
			| Login | <login> |
		Então vejo a seguinte mensagem de erro de login:
			"""
			<mensagem>
			"""
	Exemplos:
		| email                     | senha | login | mensagem                              |
		|                           |       | Sim   | Necessário preencher todos os campos! |
		| aejvilariano128@gmail.com |       | Sim   | Necessário preencher todos os campos! |
		| aejvilariano128@gmail.com | svgfx | Sim   | E-mail ou senha incorreto!            |