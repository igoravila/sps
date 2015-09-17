<div id="searchresults">
	<g:if test="${searchresults}">
		<div class="list">
			<table>
				<tbody>
					<tr class="prop">
						<td valign="top" class="name"><label for="bairro"><g:message
									code="endereco.bairro.label" default="Bairro" /></label></td>
						<td valign="top"
							class="value ${hasErrors(bean: enderecoInstance, field: 'bairro', 'errors')}">
							<g:textField name="bairro" value="${enderecoInstance?.bairro}" />
						</td>
					</tr>
					<tr class="prop">
						<td valign="top" class="name"><label for="complemento"><g:message
									code="endereco.complemento.label" default="Complemento" /></label></td>
						<td valign="top"
							class="value ${hasErrors(bean: enderecoInstance, field: 'complemento', 'errors')}">
							<g:textField name="complemento"
								value="${fieldValue(bean: enderecoInstance, field: 'complemento')}" />
						</td>
					</tr>

					<tr class="prop">
						<td valign="top" class="name"><label for="ibge"><g:message
									code="endereco.ibge.label" default="IBGE" /></label></td>
						<td valign="top"
							class="value ${hasErrors(bean: enderecoInstance, field: 'ibge', 'errors')}">
							<g:textField name="ibge"
								value="${fieldValue(bean: enderecoInstance, field: 'ibge')}" />
						</td>
					</tr>

					<tr class="prop">
						<td valign="top" class="name"><label for="localidade"><g:message
									code="endereco.localidade.label" default="Localidade" /></label></td>
						<td valign="top"
							class="value ${hasErrors(bean: enderecoInstance, field: 'localidade', 'errors')}">
							<g:textField name="localidade"
								value="${fieldValue(bean: enderecoInstance, field: 'localidade')}" />
						</td>
					</tr>

					<tr class="prop">
						<td valign="top" class="name"><label for="logradouro"><g:message
									code="endereco.logradouro.label" default="Logradouro" /></label></td>
						<td valign="top"
							class="value ${hasErrors(bean: enderecoInstance, field: 'logradouro', 'errors')}">
							<g:textField name="logradouro"
								value="${fieldValue(bean: enderecoInstance, field: 'logradouro')}" />
						</td>
					</tr>

					<tr class="prop">
						<td valign="top" class="name"><label for="uf"><g:message
									code="endereco.uf.label" default="UF" /></label></td>
						<td valign="top"
							class="value ${hasErrors(bean: enderecoInstance, field: 'uf', 'errors')}">
							<g:textField name="uf"
								value="${fieldValue(bean: enderecoInstance, field: 'uf')}" />
						</td>
					</tr>
				</tbody>
			</table>
		</div>
	</g:if>
</div>

