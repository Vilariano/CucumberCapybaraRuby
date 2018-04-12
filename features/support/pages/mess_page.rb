class Message < SitePrism::Page
	element :msgTrue, '.msgTrue'
	element :msgError, '.msgError'
	element :msglog, '.susslog'

	def sucesso
		msgTrue
	end

	def falha
		msgError
	end

	def susslog
		msglog
	end
end