package sps

import javax.xml.bind.JAXBContext
import javax.xml.bind.Unmarshaller

class EnderecoController {
	def create = {
	}
	def show() {
		[enderecoInstance: Endereco.get(params.id)]
	}
	def searchCEP(String cep) {
		def xmlStream = new URL( "http://viacep.com.br/ws/${cep}/xml/" ).text
		JAXBContext context = JAXBContext.newInstance(Endereco.class)
		Unmarshaller unmarshaller = context.createUnmarshaller()
		Endereco endereco = (Endereco) unmarshaller.unmarshal(new StringReader(xmlStream))
		render (view:'create', model:[enderecoInstance: (Endereco) unmarshaller.unmarshal(new StringReader(xmlStream))])
	}
	
	static scaffold = Endereco
}
