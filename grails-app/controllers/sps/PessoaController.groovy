package sps

import javax.xml.bind.JAXBContext
import javax.xml.bind.Unmarshaller

class PessoaController {
	def create = {
	}
	def show() {
		[pessoaInstance: Pessoa.get(params.id)]
	}
	def searchCEP(String cep) {
		def xmlStream = new URL( "http://viacep.com.br/ws/${cep}/xml/" ).text
		JAXBContext context = JAXBContext.newInstance(Pessoa.class)
		Unmarshaller unmarshaller = context.createUnmarshaller()
		render (view:'create', model:[pessoaInstance: (Pessoa) unmarshaller.unmarshal(new StringReader(xmlStream))])
	}
	static scaffold = Pessoa
}
