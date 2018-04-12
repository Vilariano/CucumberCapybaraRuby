# <------------------ Inicio dos Testes ------------------> #
	# <------------------ Inicio Cenario Login ------------------> #
	Dado("que estou na pagina de login") do
		@log_page = FormLog.new
		@log_page.load

		expect(page).to have_content 'Login'
	end

	Quando("preencho o formulario de login com os dados:") do |tableLog|
		@user_log = tableLog.rows_hash
		@log_page.faz_login(@user_log)
	end

	Então("vejo a seguinte mensagem de logado:") do |mensagem|
		@mess = Message.new
		expect(@mess.susslog.text).to eql(mensagem)
	end
	# <------------------ Fim Cenario Login ------------------> #
	# <------------------ Inicio Cenario TentativaDeLogin ------------------> #
	Então("vejo a seguinte mensagem de erro de login:") do |mensagem|
		@mess = Message.new
		expect(@mess.falha.text).to eql(mensagem)
	end
	# <------------------ Fim Cenario TentativaDeLogin ------------------> #
# <------------------ Inicio dos Testes ------------------> #