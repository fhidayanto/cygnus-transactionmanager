<%@ page import="com.cygnus.sys.DomainConfig" %>
<!doctype html>
<html>
<!-- Generated by Cygnus-templateEngine -->
	<head>
		<meta name="layout" content="cygnus-forms">
		<g:set var="entityName" value="${message(code: 'domainConfig.label', default: 'DomainConfig')}" />
		<title><g:message code="default.edit.label" args="[entityName]" /></title>
		<parameter name="pageEName" value="domainConfig" />
	</head>
	<body>
		<a href="#edit-domainConfig" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
				
			</ul>
		</div>
		<div id="edit-domainConfig" class="content scaffold-edit" role="main">
			<h1><g:message code="default.edit.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<g:hasErrors bean="${domainConfigInstance}">
			<ul class="errors" role="alert">
				<g:eachError bean="${domainConfigInstance}" var="error">
				<li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
				</g:eachError>
			</ul>
			</g:hasErrors>
			<g:formRemote name="cygnusdomainConfigEditForm" update="pageContent" url="[controller:'domainConfig', action:'save']" method="post" >
				<g:hiddenField name="id" value="${domainConfigInstance?.id}" />
				<g:hiddenField name="version" value="${domainConfigInstance?.version}" />
				<fieldset class="form">
					<g:render template="form"/>
				</fieldset>
				<fieldset class="buttons">
					<g:actionSubmit class="save" action="update" value="${message(code: 'default.button.update.label', default: 'Update')}" />
					<g:submitToRemote update="pageContent" class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" formnovalidate=""  />
				</fieldset>
			</g:formRemote>
		</div>
	</body>
</html>
