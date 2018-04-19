<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main" />
</head>
<body>
<div class="container">
    <h1 class="text-center">Add New Student</h1>
    <div class="row">
        <div class="col-md-3"></div>
        <div class="col-md-6">
            <g:form controller="student" action="saveForm">
                <g:render template="form"/>
                <input type="submit" value="Add" class="btn btn-success">
            </g:form>
        </div>
        <div class="col-md-3"></div>
    </div>
</div>
</body>
</html>
