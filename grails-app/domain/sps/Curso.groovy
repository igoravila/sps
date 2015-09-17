package sps

class Curso {
	String nome
	String toString() {
		this.nome
	}
	static hasMany = [inscricao:Inscricao]
	static belongsTo = [local:Local]
	static constraints = {
		nome nullable:false, blank:false, maxSize:128
	}
}
