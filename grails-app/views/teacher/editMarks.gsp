<%--
  Created by IntelliJ IDEA.
  User: raman
  Date: 4/18/18
  Time: 12:54 PM
--%>

<%@ page import="dssmarksheet.TeacherGradeSubject; dssmarksheet.StudentMarks" contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="main"/>
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.0.12/css/all.css" integrity="sha384-G0fIWCsCzJIMAVNQPfjH08cyYaUtMwjJwqiRKxxE/rx96Uroj1BtIQ6MLJuheaO9" crossorigin="anonymous">

    <title></title>
</head>

<body>
<br>
<br>
<div class="container">
    <div class="row">

            <div class="col-lg-4"></div>
            <div class="col-lg-8">
                <div class="table text-center">
                    <table class="table-bordered">
                        <tbody>
                        <tr>
                            <td>Student : ${student?.name}</td>
                        </tr>
                        <g:form controller="teacher" action="updateMarks" >
                            <g:hiddenField name="student" value="${student.id}"></g:hiddenField>
                            <g:hiddenField name="teacherGradeSubject" value="${teacherGradeSubject.id}"></g:hiddenField>
                            <tr>
                            <td> <g:textField  type ="number" name="obtainedMarks" id="obtainedMarks" value="${obtainedMarks}" placeholder="Marks"></g:textField>
                            </td>
                        </tr>
                        <tr><td><g:submitButton name="submit" class="text-right btn btn-success"  onclick="return validateMarks();"></g:submitButton>
                        </td>
                        </tr>
                        </g:form>
                        </tbody>

                    </table>
                </div>
                <h1></h1>


            </div>

        </div>

    </div>
</div>
<script>
    function validateForm()
    {

        var z = document.forms["myForm"]["obtainedMarks[]"].value;
        if(!z.match(/^[1-9][0-9]?$|^100$/))
        {
            alert("Please only enter marks between 1-100")

            event.preventDefault(); // cancel default behavior

            return false;
        }

    }
</script>
</body>
</html>