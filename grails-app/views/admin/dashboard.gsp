<%--
  Created by IntelliJ IDEA.
  User: ubuntu
  Date: 4/13/18
  Time: 12:39 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title></title>
    <meta name="layout" content="main">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.0.12/css/all.css" integrity="sha384-G0fIWCsCzJIMAVNQPfjH08cyYaUtMwjJwqiRKxxE/rx96Uroj1BtIQ6MLJuheaO9" crossorigin="anonymous">
</head>

<body>
<br>
<div class ="container">
    <div class="text-center">
        <p>Admin Dashboard</p>
    </div>


    <div class="row">
        <table class="table table-striped">

            <thead>
            <tr>
                <th>S.N.</th>
                <th>Grade</th>
                <th>View Students</th>



            </tr>
            </thead>
            <g:each in="${gradeList}" status="i" var="gradeInstance">
                <tr>
                    <td> ${i + 1} </td>
                    <td>${gradeInstance?.gradeNo}</td>
                    %{--<td>${gradeSubjectInstance?.subjectName}</td>--}%
                    <td><g:link controller="student" action="show" id="${gradeInstance.id}"><i class="fas fa-eye fa-2x" style="color:rgba(45,49,98,0.63);"></i></g:link></td>
                </tr>
            </g:each>
        </table>
    </div>
</div>

</body>
</html>