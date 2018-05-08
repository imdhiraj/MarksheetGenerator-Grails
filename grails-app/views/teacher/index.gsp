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
        <g:link class="btn btn-primary "  controller="teacher" action="create">Add Teacher</g:link><br><br>
    </div>

    <div class="row">
        <table class="table table-striped">
            <thead>
            <tr>
                <th>S.N.</th>
                <th>Name</th>
                <th>Email</th>
                <th>Edit</th>
                <th>Delete</th>

            </tr>
            </thead>
            <g:each in="${teacherList}" status="i" var="teacherInstance">
                <tr>
                    <td> ${i + 1} </td>
                    <td>${teacherInstance?.teacherName}</td>
                    <td>${teacherInstance?.email}</td>
                    <td><g:link action="edit" id="${teacherInstance?.id}"><i class="fas fa-edit"></i> </g:link> </td>
                    <td><g:link action="delete" id="${teacherInstance?.id}" onclick="return confirm('Are you sure?')"><i class="fas fa-trash-alt"></i></g:link></td>
                    %{--<td><g:link controller="student" action="edit" params="[id:${studentInstance.id}]" >EDit</g:link> </td>--}%
                </tr>
            </g:each>
        </table>
    </div>
</div>
</body>
</html>