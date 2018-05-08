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
<div class="container">
    <div class="row">
        <div class="col-md-3">
            <p class="btn btn-secondary text-right">${studentList.grade[0].toString()}</p>
        </div>

        <div class="text-right col-md-9">
            <g:link class="btn btn-primary"  controller="student" action="create">Add Student</g:link><br><br>
        </div>

    </div>

</div>
<div class ="container">
    <div class="row">
        <table class="table table-striped">

            <thead>
            <tr>
                <th>S.N.</th>
                <th>Name</th>
                <th>Roll No</th>
                %{--<th>Grade</th>--}%
                <th>Edit</th>
                <th>Delete</th>

            </tr>
            </thead>
            <g:each in="${studentList}" status="i" var="studentInstance">
                <tr>
                    <td> ${i + 1} </td>
                    <td>${studentInstance?.name}</td>
                    <td>${studentInstance?.rollNo}</td>
                    %{--<td>${studentInstance.grade}</td>--}%
                    <td><g:link controller="student" action="edit" id="${studentInstance.id}" ><i class="fas fa-edit"></i></g:link> </td>
                    <td><g:link action="delete" id="${studentInstance.id}" onclick="return confirm('Are you sure?')"><i class="fas fa-trash-alt"></i></g:link></td>

                </tr>
            </g:each>
        </table>
    </div>
</div>
</body>
</html>