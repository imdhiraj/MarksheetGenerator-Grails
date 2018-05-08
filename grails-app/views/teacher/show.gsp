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
<div class=" container">
    <div class="text-center">
        <a href="#" class="btn-outline-info btn">${gradeSubject}</a><br><br>
    </div>
    <%  def teacherGradeSubject = TeacherGradeSubject.findByGradeSubject(gradeSubject) %>
    <g:if test="${!flag && !teacherGradeSubject.marksStatus}">
        <div class="text-right">
            <g:link action="show" params="[flag: true]" class="btn-outline-info btn" id="${gradeSubject.id}">Add Marks</g:link><br><br>
        </div>
    </g:if>

    <g:form controller="teacher" action="subjectMarks" name="myForm">
        <g:hiddenField name="subject" value="${gradeSubject?.id}"/>
        <table class="table table-striped">
            <thead>
            <tr>
                <th>S.N.</th>
                <th>Student Name</th>
                <g:if test="${flag||teacherGradeSubject.marksStatus}">
                    <th>Obtained Marks</th>
                    <th>Edit</th>
                </g:if>

            </tr>
            </thead>
            <g:each in="${studentList}" status="i" var="studentInstance">
                <tr>
                    <td> ${i + 1} </td>
                    <td>${studentInstance?.name}<input type="hidden" value="${studentInstance?.name}" name="studentName[]"></td>
                    <td>
                        <g:if test="${teacherGradeSubject.marksStatus}">
                            ${dssmarksheet.StudentMarks.findByStudentAndTeacherGradeSubject(studentInstance,teacherGradeSubject)?.marksObtained}
                        </g:if>
                        <g:else>
                            <g:if test="${flag}">
                                <g:textField name="obtainedMarks[]" id="obtainedMarks" placeholder="Marks"></g:textField>
                            </g:if>

                        </g:else>

                    </td>
                    <td>
                <g:if test="${flag||teacherGradeSubject.marksStatus}">
                        <g:link controller="teacher" action="editMarks" id="${studentInstance?.id}" ><i class="fas fa-edit"></i></g:link> </td>
                </g:if>
                    <td>
                        <g:if test="${teacherGradeSubject.marksStatus}">
                        </g:if>

                    </td>

                </tr>
            </g:each>
        </table>
        <div class="text-right">
            <g:if test="${flag}">
                <g:submitButton name="submit" class="text-right"  onclick="return validateMarks();"></g:submitButton>
            </g:if>
        </div>
    </g:form>

</div>
<script>
function validateForm()
{

var z = document.forms["myForm"]["obtainedMarks[]"].value;
if(!z.match(/^[1-9][0-9]?$|^100$/))
{
    $('#name').val("");
    $('#name').focus();
    event.preventDefault(); // cancel default behavior

    return false;
}

}
</script>
<script>
    function  validateMarks(){
        var name = $("#obtainedMarks").val();
        if(name.match("/^[1-9][0-9]?$|^100$/")){
            alert("Please only enter marks between 1-100")
            $('#obtainedMarks').val("");
            $('#obtainedMarks').focus();

        }
    }

</script>
</body>
</html>