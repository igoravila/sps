<html>
	<head>
       <title><g:layoutTitle default="Grails" /></title>
        <link rel="stylesheet" href="${resource(dir:'css',file:'main.css')}" />
        <link rel="shortcut icon" href="${resource(dir:'images',file:'favicon.ico')}" type="image/x-icon" />
		<g:layoutHead/>
		        <g:javascript library="prototype" />
        <g:javascript>
           function showSpinner(visible) {
              $('spinner').style.display = visible ? "inline" : "none";
           }
           Ajax.Responders.register({
           onLoading: function() {
                 showSpinner(true);
           },
           onComplete: function() {
             if(!Ajax.activeRequestCount) showSpinner(false);
           }
           });
         </g:javascript>
	</head>
	<body>
		<div id="grailsLogo" role="banner"><a href="http://grails.org"><asset:image src="grails_logo.png" alt="Grails"/></a></div>
		<g:layoutBody/>
		<div class="footer" role="contentinfo"></div>
		<div id="spinner" class="spinner" style="display:none;"><g:message code="spinner.alt" default="Loading&hellip;"/></div>
	</body>
</html>
