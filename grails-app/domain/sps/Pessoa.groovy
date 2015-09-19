package sps

import javax.xml.bind.annotation.XmlRootElement
import javax.xml.bind.annotation.XmlElement
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlAccessType;

@XmlRootElement(name="xmlcep")
@XmlAccessorType(XmlAccessType.NONE)
class Pessoa {
	String nome
	String rg
	String cpf
	Date dataNascimento
	
	@XmlElement(name="cep")
	String cep;
	@XmlElement(name="logradouro")
	String logradouro;
	@XmlElement(name="complemento")
	String complemento;
	@XmlElement(name="bairro")
	String bairro;
	@XmlElement(name="localidade")
	String localidade;
	@XmlElement(name="uf")
	String uf;
	@XmlElement(name="ibge")
	String ibge;

	String toString() {
		this.nome
	}

	static constraints = {
		nome nullable:false, blank:false, maxSize:128
		cpf unique:true
		dataNascimento nullable:true
	}
}
