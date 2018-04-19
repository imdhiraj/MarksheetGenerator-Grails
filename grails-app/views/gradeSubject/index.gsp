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
        <g:link class="btn btn-primary "  controller="gradeSubject" action="create">Add Grade Subject</g:link><br><br>
    </div>


    <div class="row">
        <table class="table table-striped">

            <thead>
            <tr>
                <th>S.N.</th>
                <th>Grade</th>
                <th>Subject</th>


            </tr>
            </thead>
            <g:each in="${gradeSubjectList}" status="i" var="gradeSubjectInstance">
                <tr>
                    <td> ${i + 1} </td>
                    <td>${gradeSubjectInstance?.gradeNo}</td>
                    <td>${gradeSubjectInstance?.subjectName}</td>

                </tr>
            </g:each>
        </table>
    </div>
</div>
</body>
</html>