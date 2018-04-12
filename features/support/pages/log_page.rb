class FormLog < SitePrism::Page
	set_url '/login.php'
	element :email, 'input[name=email]'
	element :senha, 'input[name=senha]'
	element :login, 'input[name=btnLogin]'

	# Self => chama objeto(ou elemento) da propria pagina
	def faz_login(u)
		email.set u['Email']
		senha.set u['Senha']
		#  Se a informação do campo cadastrar for Igual a "Sim", você Clica, se não, não faça nada!
		login.click if u['Login'].eql?('Sim')		
	end
end