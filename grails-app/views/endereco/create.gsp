

<%@ page import="sps.Endereco"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<meta name="layout" content="main" />
<g:set var="entityName"
	value="${message(code: 'endereco.label', default: 'Endereco')}" />
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
		<g:hasErrors bean="${enderecoInstance}">
			<div class="errors">
				<g:renderErrors bean="${enderecoInstance}" as="list" />
			</div>
		</g:hasErrors>
		<div id="searchbox">


			<g:formRemote name="subForm"
				url="[controller:'endereco', action:'searchCEP']"
				update="mainContent">
				<label for="cep">CEP</label>
				<g:textField name="cep" />
				<g:submitButton name="Procurar CEP" />
			</g:formRemote>



			<table id="mainContent">
				<tbody>
					<tr class="prop">
						<td valign="top" class="name"><g:message
								code="endereco.logradouro.label" default="Logradouro" /></td>
						<td valign="top" class="value">
							${fieldValue(bean: enderecoInstance, field: "logradouro")}
						</td>
					</tr>
					<tr class="prop">
						<td valign="top" class="name"><g:message
								code="endereco.complemento.label" default="Complemento" /></td>
						<td valign="top" class="value">
							${fieldValue(bean: enderecoInstance, field: "complemento")}
						</td>
					</tr>
					<tr class="prop">
						<td valign="top" class="name"><g:message
								code="endereco.bairro.label" default="Bairro" /></td>
						<td valign="top" class="value">
							${fieldValue(bean: enderecoInstance, field: "bairro")}
						</td>
					</tr>
					<tr class="prop">
						<td valign="top" class="name"><g:message
								code="endereco.lcoalidade.label" default="Localidade" /></td>
						<td valign="top" class="value">
							${fieldValue(bean: enderecoInstance, field: "localidade")}
						</td>
					</tr>
					<tr class="prop">
						<td valign="top" class="name"><g:message
								code="endereco.uf.label" default="UF" /></td>
						<td valign="top" class="value">
							${fieldValue(bean: enderecoInstance, field: "uf")}
						</td>
					</tr>
					<tr class="prop">
						<td valign="top" class="name"><g:message
								code="endereco.ibge.label" default="IBGE" /></td>
						<td valign="top" class="value">
							${fieldValue(bean: enderecoInstance, field: "ibge")}
						</td>
					</tr>
				</tbody>
			</table>
		</div>
	</div>
</body>
</html>
