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
<div class="container">
    <div class="row">
        <div class="col-md-3">
            <p class="btn btn-secondary text-right">${gradeSubjectList.gradeNo[0].toString()}</p>
        </div>
        <div class="text-right col-md-9">
            <g:link class="btn btn-primary "  controller="gradeSubject" action="create">Add Grade Subject</g:link><br><br>
        </div>
    </div>
</div>
<div class ="container">
    <div class="row">
        <table class="table table-striped table-bordered " style="margin-left:10px;margin-right:10px; ">

            <thead>
            <tr>
                <th>S.N.</th>
                <th>Subject</th>
                %{--<th>View Details</th>--}%
                <th>Delete</th>


            </tr>
            </thead>
            <g:each in="${gradeSubjectList}" status="i" var="gradeSubjectInstance">
                <tr>
                    <td> ${i + 1} </td>
                    %{--<td>${gradeSubjectInstance?.gradeNo}</td>--}%
                    <td>${gradeSubjectInstance?.subjectName}</td>
                    %{--<td><g:link action="show" id="${gradeSubjectInstance.id}">View Details</g:link></td>--}%
                    <td><g:link action="delete" id="${gradeSubjectInstance.id}" onclick="return confirm('Are you sure?')">Delete</g:link></td>
                </tr>
            </g:each>
        </table>
    </div>
</div>
</body>
</html>