<%--
  Created by IntelliJ IDEA.
  User: raman
  Date: 4/23/18
  Time: 9:48 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title></title>
    <meta name="layout" content="main">
</head>

<body>
<div class="container">
<div class="row">
    <table class="table table-striped">

        <thead>
        <tr>
            <th>S.N.</th>
            <th>Student</th>
            <th>Subject </th>
            <th>Marks Obtained </th>
            %{----}%


        </tr>
        </thead>
        <g:each in="${studentMarksList}" status="i" var="marksInstance">
            <tr>
                <td> ${i + 1} </td>
                <td>${marksInstance.student.name}</td>
                <td> ${marksInstance.teacherGradeSubject.gradeSubject.subjectName}</td>
                <td> ${marksInstance.marksObtained}</td>

            </tr>
        </g:each>
    </table>
</div>
</div>
</body>
</html>