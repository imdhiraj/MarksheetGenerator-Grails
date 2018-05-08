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
        <g:link class="btn btn-primary " controller="subject" action="create">Add Subject</g:link><br><br>
    </div>


    <div class="row">
        <table class="table table-striped">



            <thead>
        <br>
            <tr>
                <th>S.N.</th>
                <th>Subject Name</th>
                <th>Full Marks</th>
                <th>Pass Marks</th>
                <th>Theory Marks</th>
                <th>Practical Marks</th>
                <th>Edit</th>
                <th>Delete</th>

            </tr>
            </thead>
            <g:each in="${subjectList}" status="i" var="subjectInstance">
                <tr>
                    <td> ${i + 1} </td>
                    <td>${subjectInstance?.subjectName}</td>
                    <td>${subjectInstance?.fullMarks}</td>
                    <td>${subjectInstance?.passMarks}</td>
                    <td>${subjectInstance?.theoryMarks}</td>
                    <td>${subjectInstance.practicalMarks}</td>
                <td><g:link controller="subject" action="edit" id="${subjectInstance.id}" ><i class="fas fa-edit"></i></g:link> </td>
                    <td><g:link action="delete" id="${subjectInstance.id}" onclick="return confirm('Are you sure?')"><i class="fas fa-trash-alt"></i></g:link></td>

                </tr>
            </g:each>
        </table>
    </div>
</div>
</body>
</html>