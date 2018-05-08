<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <title>Marksheet</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <asset:stylesheet src="bootstrap.css"/>
    <asset:stylesheet src="bootstrap-grid.css"/>
    <asset:stylesheet src="bootstrap.min.css"/>
    <asset:stylesheet src="noty.css"/>
    <asset:stylesheet src="animate.css"/>
    <asset:stylesheet src="https://use.fontawesome.com/releases/v5.0.12/css/all.css"/>
    %{--<asset:stylesheet src="dashboard.css"/>--}%

    %{--<asset:stylesheet src="application.css"/>--}%
    <asset:stylesheet src="errors.css"/>
    %{--<asset:stylesheet src="grails.css"/>--}%
    %{--<asset:stylesheet src="main.css"/>--}%
    %{--<asset:stylesheet src="mobile.css"/>--}%
    %{--<asset:javascript src="application.j1s"/>--}%
    <asset:javascript src="jquery-2.2.0.min.js"/>
    <asset:javascript src="bootstrap.js"/>
    <asset:javascript src="bootstrap.bundle.js.js"/>
    <asset:javascript src="https://unpkg.com/feather-icons/dist/feather.min.js"/>
    <asset:javascript src="js.js"/>
    <asset:javascript src="noty.js"/>
    <g:layoutHead/>
    <script>
    $(function(){
        <g:if test="${flash.message}">
            new Noty({
                type: '${messageType}',
                layout: 'topRight',
                theme: 'relax',
                text: '${flash.message}',
                animation: { open: 'animated bounceInRight', // Animate.css class names
                    close: 'animated bounceOutRight' // Animate.css class names
                    },
                timeout: 1000
            }).show();
        </g:if>
        });
    </script>
</head>
<body>
%{--<g:include view="layouts/_adminHeader.gsp"/>--}%
<sec:ifLoggedIn>
    <sec:ifAnyGranted roles="ROLE_ADMIN">
        <g:include view="layouts/_adminHeader.gsp"/>
    </sec:ifAnyGranted>
    <sec:ifAnyGranted roles="ROLE_USER">
        <g:include view="layouts/_userHeader.gsp"/>
    </sec:ifAnyGranted>
</sec:ifLoggedIn>