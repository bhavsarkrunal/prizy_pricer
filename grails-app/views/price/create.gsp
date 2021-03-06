<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'price.label', default: 'Price')}" />
		<title><g:message code="default.create.label" args="[entityName]" /></title>
		<link rel="stylesheet" href="${resource(dir: 'css', file: '_grails.css')}" type="text/css"/>
		
	</head>
	<body>
		<a href="#create-price" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div class="fieldcontain ${hasErrors(bean: productInstance, field: 'productName', 'error')} required">
		</div>
		<div id="create-price" class="content scaffold-create" role="main">
			<h1><g:message code="default.create.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			
			<g:if test="${flash.error}">
    			<div class="errors" role="alert" >${flash.error}</div>    			
			</g:if>
			<g:hasErrors bean="${priceInstance}">
			<ul class="errors" role="alert">
				<g:eachError bean="${priceInstance}" var="error">
				<li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
				</g:eachError>
			</ul>
			</g:hasErrors>
			<g:form url="[resource:priceInstance, action:'save',p:'${productInstance?.barcode }']" >
				<fieldset class="form">
					<g:render template="form"/>
				</fieldset>
				<fieldset class="buttons">
					<g:submitButton name="create" class="save" value="${message(code: 'default.button.create.label', default: 'Create')}" />
	
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
