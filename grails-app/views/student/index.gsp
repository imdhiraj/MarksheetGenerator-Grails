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
</head>

<body>
<br>
<div class ="container">
    <div class="text-right">
        <g:link class="btn btn-primary "  controller="student" action="create">Add Student</g:link><br><br>
    </div>


    <div class="row">
        <table class="table table-striped">

            <thead>
            <tr>
                <th>S.N.</th>
                <th>Name</th>
                <th>Roll No</th>
                <th>Grade</th>
                <th>Edit</th>
                <th>Delete</th>

            </tr>
            </thead>
            <g:each in="${studentList}" status="i" var="studentInstance">
                <tr>
                    <td> ${i + 1} </td>
                    <td>${studentInstance?.name}</td>
                    <td>${studentInstance?.rollNo}</td>
                    <td>${studentInstance.grade}</td>
                    <td><g:link controller="student" action="edit" id="${studentInstance.id}" >Edit</g:link> </td>


                    <td><g:link action="delete" id="${studentInstance.id}" onclick="return confirm('Are you sure?')">Delete</g:link></td>

                </tr>
            </g:each>
        </table>
    </div>
</div>
</body>
</html>