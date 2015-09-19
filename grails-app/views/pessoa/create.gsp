

<%@ page import="sps.Pessoa"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<meta name="layout" content="main" />
<g:set var="entityName"
	value="${message(code: 'pessoa.label', default: 'Endereco')}" />
<title><g:message code="default.create.label"
		args="[entityName]" /></title>
<g:javascript library="jquery" />
</head>
<body>
	<div class="nav">
		<span class="menuButton"><a class="home"
			href="${createLink(uri: '/')}"><g:message
					code="default.home.label" /></a></span> <span class="menuButton"><g:link
				class="list" action="list">
				<g:message code="default.list.label" args="[entityName]" />
			</g:link></span>
	</div>
	<div class="body">
		<h1>
			<g:message code="default.create.label" args="[entityName]" />
		</h1>
		<g:if test="${flash.message}">
			<div class="message">
				${flash.message}
			</div>
		</g:if>
		<g:hasErrors bean="${pessoaInstance}">
			<div class="errors">
				<g:renderErrors bean="${pessoaInstance}" as="list" />
			</div>
		</g:hasErrors>
		<g:form action="save">
			<g:hiddenField name="cep" value="${pessoaInstance?.cep}" />
			<div class="dialog">
				<div>
					<table>
						<tbody>
							<tr class="prop">
								<td valign="top" class="name"><g:message
										code="pessoa.nome.label" default="Nome" /></td>
								<td valign="top" class="value"><g:textField name="nome"
										value="${pessoaInstance?.nome}" /></td>
							</tr>
							<tr class="prop">
								<td valign="top" class="name"><g:message
										code="pessoa.cpf.label" default="CPF" /></td>
								<td valign="top" class="value"><g:textField name="cpf"
										value="${pessoaInstance?.cpf}" /></td>
							</tr>
							<tr class="prop">
								<td valign="top" class="name"><g:message
										code="pessoa.rg.label" default="RG" /></td>
								<td valign="top" class="value"><g:textField name="rg"
										value="${pessoaInstance?.rg}" /></td>
							</tr>
							<tr class="prop">
								<td valign="top" class="name"><g:message
										code="pessoa.dataNascimento.label" default="dataNascimento" /></td>
								<td valign="top" class="value"><g:datePicker
										name="dataNascimento"
										value="${pessoaInstance?.dataNascimento}" precision="day"
										years="${1930..2015}" /></td>
							</tr>
						</tbody>
					</table>
					<table id="mainContent">
						<tbody>
							<tr class="prop">
								<td valign="top" class="name"><g:message
										code="pessoa.logradouro.label" default="Logradouro" /></td>
								<td valign="top" class="value"><g:textField
										name="logradouro" value="${pessoaInstance?.logradouro}" /></td>
							</tr>
							<tr class="prop">
								<td valign="top" class="name"><g:message
										code="pessoa.complemento.label" default="Complemento" /></td>
								<td valign="top" class="value"><g:textField
										name="complemento" value="${pessoaInstance?.complemento}" />
								</td>
							</tr>
							<tr class="prop">
								<td valign="top" class="name"><g:message
										code="pessoa.bairro.label" default="Bairro" /></td>
								<td valign="top" class="value"><g:textField name="bairro"
										value="${pessoaInstance?.bairro}" /></td>
							</tr>
							<tr class="prop">
								<td valign="top" class="name"><g:message
										code="pessoa.lcoalidade.label" default="Localidade" /></td>
								<td valign="top" class="value"><g:textField
										name="localidade" value="${pessoaInstance?.localidade}" /></td>
							</tr>
							<tr class="prop">
								<td valign="top" class="name"><g:message
										code="pessoa.uf.label" default="UF" /></td>
								<td valign="top" class="value"><g:textField name="uf"
										value="${pessoaInstance?.uf}" /></td>
							</tr>
							<tr class="prop">
								<td valign="top" class="name"><g:message
										code="pessoa.ibge.label" default="IBGE" /></td>
								<td valign="top" class="value"><g:textField name="ibge"
										value="${pessoaInstance?.ibge}" /></td>
							</tr>
						</tbody>
					</table>
				</div>
			</div>
			<div class="buttons">
				<span class="button"><g:submitButton name="create"
						class="save"
						value="${message(code: 'default.button.create.label', default: 'Create')}" /></span>
			</div>
		</g:form>
		<div id="searchbox">
			<g:formRemote name="subForm"
				url="[controller:'pessoa', action:'searchCEP']" update="mainContent">
				<label for="cep">CEP</label>
				<g:textField name="cep" />
				<g:submitButton name="Procurar CEP" />
			</g:formRemote>

		</div>
		
		
</body>
</html>
