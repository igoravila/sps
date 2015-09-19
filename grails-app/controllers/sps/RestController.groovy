package sps

import grails.rest.RestfulController
import grails.converters.XML
import sps.Curso

class RestController extends RestfulController {
	static responseFormats = ['xml']
	RestController() {
		super(Curso)
	}
	def show() {
		if(params.id && Curso.exists(params.id)){
			render Curso.findById(params.id) as XML
		}else{
			render Curso.list() as XML
		}
	}

	def save() {
		def curso = new Curso(params['curso'])

		if(curso.save()){
			render curso as XML
		}else{
			//handle errors...
		}
	}
	static scaffold = Curso
}
