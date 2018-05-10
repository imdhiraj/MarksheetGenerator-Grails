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
<div class ="container">
    <div class="text-right">
        %{--<g:link class="btn btn-primary "  controller="gradeSubject" action="create">Add Grade Subject</g:link><br><br>--}%
    </div>


    <div class="row">
        <table class="table table-striped">

            <thead>
            <tr>
                <th>S.N.</th>
                <th>Grade</th>
                <th>View Details</th>


            </tr>
            </thead>
            <g:each in="${gradeList}" status="i" var="gradeInstance">
                <tr>
                    <td> ${i + 1} </td>
                    <td>${gradeInstance?.gradeNo}</td>
                    %{--<td>${gradeSubjectInstance?.subjectName}</td>--}%
                    <td><g:link action="show" id="${gradeInstance.id}"><i class="fas fa-eye fa-2x"></i></g:link></td>
                </tr>
            </g:each>
        </table>
    </div>
</div>
</body>
</html>