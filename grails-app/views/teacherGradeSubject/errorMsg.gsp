<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main" />
</head>
<body>
<div class="container">
    <h1 class="text-center">Error</h1>

%{--<g:if test="${msg}">--}%
%{--<p >${msg}</p>--}%
%{----}%

%{--</g:if>--}%
<g:if test="${msg}">
    <div class="alert alert-info text-center">
        ${msg}<br><br>
        <g:link controller="teacherGradeSubject" action="create" class="text-danger text-center btn btn-outline-info">Go back</g:link>
    </div>
</g:if>
</div>
</body>
</html>