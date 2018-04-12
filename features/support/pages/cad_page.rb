class FormCad < SitePrism::Page
	set_url '/cadastro.php'
	element :nome, 'input[name=nome]'
	element :email, 'input[name=email]'
	element :senha, 'input[name=senha]'
	element :cadastro01, 'input[name=btnCadUsuario]'

	# Self => chama objeto(ou elemento) da propria pagina
	def faz_cadastro(u)
		nome.set u['Nome']
		email.set u['Email']
		senha.set u['Senha']
		#  Se a informação do campo cadastrar for Igual a "Sim", você Clica, se não, não faça nada!
		cadastro01.click if u['Cadastrar'].eql?('Sim')		
	end
end