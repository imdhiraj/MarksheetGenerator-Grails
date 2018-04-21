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
<div class=" container">
    %{--<div class="text-right">--}%
        %{--<g:link class="btn btn-primary "  controller="teacher" action="create">Add Teacher</g:link><br><br>--}%
    %{--</div>--}%

    <div class="row">
    <g:form controller="teacher" action="subjectMarks">


        <table class="table table-striped">
            <thead>
            <tr>
                <th>S.N.</th>
                <th>Student Name</th>
                <th>Obtained Marks</th>
            </tr>
            </thead>
            <g:each in="${studentList}" status="i" var="studentInstance">
                <tr>
                    <td> ${i + 1} </td>
                    <td>${studentInstance?.name}<input type="hidden" value="${studentInstance?.name}" name="studentName[]"></td>
                    <td><g:textField name="obtainedMarks[]" id="obtainedMarks" placeholder="Marks"></g:textField></td>
                    %{--<td><g:link action="edit" id="${teacherInstance.id}">Edit</g:link> </td>--}%
                    %{--<td><g:link action="delete" id="${teacherInstance.id}" onclick="return confirm('Are you sure?')">Delete</g:link></td>--}%
                    %{--<td><g:link controller="student" action="edit" params="[id:${studentInstance.id}]" >EDit</g:link> </td>--}%
                </tr>
            </g:each>
        </table>

    </g:form>
    </div>
</div>
</body>
</html>