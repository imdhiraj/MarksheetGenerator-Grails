<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main" />
</head>
<body>
<div class="container">
    <h1 class="text-center">Assign Grade and Subject</h1>

    %{--<g:if test="${msg}">--}%
        %{--<p >${msg}</p>--}%
   %{----}%

    %{--</g:if>--}%
    <g:if test="${msg}">
        <div class="alert alert-info">
            ${msg}
            <g:link controller="teacherGradeSubject" action="create">Go back</g:link>
        </div>
    </g:if>
    <div class="row">
        <div class="col-md-3"></div>
        <div class="col-md-6">
            <g:form controller="teacherGradeSubject" action="saveForm">
                <g:render template="form"/>
                <input type="submit"  value="Add" class="btn btn-success">
            </g:form>
        </div>
        <div class="col-md-3"></div>
    </div>
</div>
</body>
</html>
