package sps

import javax.xml.bind.annotation.XmlRootElement
import javax.xml.bind.annotation.XmlElement
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlAccessType;

@XmlRootElement(name="xmlcep")
@XmlAccessorType(XmlAccessType.NONE)
class Endereco implements Serializable {
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
	static constraints = {
		cep(blank:false)
		logradouro()
		complemento()
		bairro()
		localidade()
		uf()
		ibge()
	}
	String toString() {
		cep
	}
}
