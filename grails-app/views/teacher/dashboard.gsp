<%--
  Created by IntelliJ IDEA.
  User: raman
  Date: 4/18/18
  Time: 12:54 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="main"/>
    <title></title>
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.0.12/css/all.css" integrity="sha384-G0fIWCsCzJIMAVNQPfjH08cyYaUtMwjJwqiRKxxE/rx96Uroj1BtIQ6MLJuheaO9" crossorigin="anonymous">

</head>
<body>
<br>
<div class=" container">
    <div class="text-right">
        <a href="#" class="btn-outline-info btn">Welcome ${teacherName}</a><br><br>
    </div>
    %{--<g:hiddenField name="flag" value="0"></g:hiddenField>--}%
    <div class="row">
        <table class="table table-striped">
            <thead>
            <tr>
                <th>S.N.</th>
                <th>Grade</th>
                <th>Subject</th>
                <th>View Students</th>

            </tr>
            </thead>
            <g:each in="${gradeSubjectList}" status="i" var="gradeSubjectInstance">
                <tr>
                    <td> ${i + 1} </td>
                    <td>${gradeSubjectInstance.gradeNo.gradeNo }</td>
                    <td>${gradeSubjectInstance?.subjectName.subjectName}</td>
                    <td><g:link controller="teacher" action="show" flag="0" id="${gradeSubjectInstance?.id}"><i class="fas fa-eye fa-2x"></i> </g:link> </td>
                </tr>
            </g:each>
        </table>
    </div>
</div>
</body>
</html>