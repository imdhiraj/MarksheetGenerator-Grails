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

<div class=" container">
    %{--<div class="text-right">--}%
        %{--<g:link class="btn btn-primary "  controller="teacher" action="create">Add Teacher</g:link><br><br>--}%
    %{--</div>--}%

    <div class="row">
        <table class="table table-striped">
            <thead>
            <tr>


            </tr>
            </thead>
            <g:each in="${gradeSubjectList}" status="i" var="gradeSubjectInstance">
                <tr>
                    <td> ${i + 1} </td>
                    <td>${gradeSubjectInstance.gradeNo.gradeNo }</td>
                    <td>${gradeSubjectInstance?.subjectName.subjectName}</td>
                    <td><g:link controller="teacher" action="show" id="${gradeSubjectInstance.id}">View </g:link> </td>

                    %{--<td><g:link controller="student" action="edit" params="[id:${studentInstance.id}]" >EDit</g:link> </td>--}%
                </tr>
            </g:each>
        </table>
    </div>
</div>
</body>
</html>
<body>
<br>
<div class=" container">
    <div class="text-right">
        <a href="#" class="btn-outline-info btn">Welcome ${teacherName}</a><br><br>
    </div>

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
                    <td><g:link controller="teacher" action="show" id="${gradeSubjectInstance.id}">View </g:link> </td>
                    %{--<td><g:link controller="student" action="edit" params="[id:${studentInstance.id}]" >EDit</g:link> </td>--}%
                </tr>
            </g:each>
        </table>
    </div>
</div>
</body>
</html>