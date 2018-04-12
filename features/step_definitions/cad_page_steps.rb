# <------------------ Inicio dos Testes ------------------> #
	# <------------------Inicio Cenario Cadastro ------------------> #
	Dado("que estou na pagina de Cadastro") do
		@cad_page = FormCad.new
		@cad_page.load

		expect(page).to have_content 'Cadastro'
		page.save_screenshot('features/screenshots/01_home_cadastro.png')
	end

	Quando("preencho o formulario de cadastro com os dados:") do |tableCad|
		@user_cad = tableCad.rows_hash
		@cad_page.faz_cadastro(@user_cad)
		page.save_screenshot('features/screenshots/02_formCadPreenchido.png')
	end

	Então("sou direcionado para a pagina de Login vejo a seguinte mensagem:") do |mensagem|
		@mess = Message.new
		expect(@mess.sucesso.text).to eql(mensagem)
		sleep(1)
		page.save_screenshot('features/screenshots/03_CadSocesso.png')
	end
	# <------------------ Fim Cenario Cadastro ------------------> #
	# <------------------ Inicio Tentativa De Cadastro ------------------> #
	Então("vejo a seguinte mensagem de erro de cadastro:") do |mensagem|
		@mess = Message.new
		expect(@mess.falha.text).to eql(mensagem)
		sleep(1)
		page.save_screenshot('features/screenshots/04_ErroCad.png')
	end
	# <------------------ Fim Tentativa De Cadastro ------------------> #
# <------------------ Inicio dos Testes ------------------> #