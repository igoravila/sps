package sps

import grails.rest.RestfulController
import grails.converters.XML
import sps.Pessoa

class PessoaWSController extends RestfulController{

	static responseFormats = ['xml']
	PessoaWSController() {
		super(Pessoa)
	}
	def show = {
		if(params.id && Pessoa.exists(params.id)){
			render Pessoa.findById(params.id) as XML
		}else{
			render Pessoa.list() as XML
		}
	}

	def save = {
		def pessoa = new Pessoa(params['pessoa'])

		if(pessoa.save()){
			render pessoa as XML
		}else{
			//handle errors...
		}
	}
	static scaffold = Pessoa
}
