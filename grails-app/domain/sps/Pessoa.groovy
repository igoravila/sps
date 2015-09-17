package sps

class Pessoa {
	String nome
	String rg
	String cpf
	Date dataNascimento
	Local local

	String toString() {
		this.nome
	}

	static constraints = {
		nome nullable:false, blank:false, maxSize:128
		cpf unique:true
	}
}
