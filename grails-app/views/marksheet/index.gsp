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
    %{--<div class="text-right">--}%
        %{--<g:link class="btn btn-primary "  controller="marksheet" action="show">View Marks Sheet</g:link><br><br>--}%
    %{--</div>--}%


    <div class="row">
        <table class="table table-striped">

            <thead>
            <tr>
                <th>S.N.</th>
                <th>Grade</th>
                <th>View </th>
%{----}%


            </tr>
            </thead>
            <g:each in="${gradeList}" status="i" var="gradeInstance">
                <tr>
                    <td> ${i + 1} </td>
                    <td>${gradeInstance?.gradeNo}</td>
                    %{--<td>${gradeSubjectInstance?.subjectName}</td>--}%
                    <td><g:link action="viewStudent" id="${gradeInstance.id}">View Details</g:link></td>
                </tr>
            </g:each>
        </table>
    </div>
</div>
</body>
</html>