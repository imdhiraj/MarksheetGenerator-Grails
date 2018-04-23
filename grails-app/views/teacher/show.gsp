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
    <div class="text-center">
        <a href="#" class="btn-outline-info btn">${gradeSubject}</a><br><br>
    </div>
    <div class="text-right">
        <a href="#" onclick="myFunction()" class="btn-outline-info btn">Add Marks</a><br><br>
    </div>


    <form controller="teacher" action="subjectMarks" id ="formID">
    <g:hiddenField name="subject" value="${gradeSubject}"/>
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
            </tr>
        </g:each>
    </table>
    <div class="text-right">
        <g:submitButton name="submit" class="text-right"></g:submitButton>
    </div>
</form>
    <script>
        function myFunction() {
            var x = document.getElementById("formID");
            if (x.style.display === "none") {
                x.style.display = "block";
            } else {
                x.style.display = "none";
            }
        }
    </script>
</body>
</html>