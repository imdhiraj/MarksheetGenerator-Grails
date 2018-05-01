<%--
  Created by IntelliJ IDEA.
  User: raman
  Date: 4/18/18
  Time: 12:54 PM
--%>

<%@ page import="dssmarksheet.StudentMarks" contentType="text/html;charset=UTF-8" %>
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
    <g:if test="${!flag && !teacherGradeSubject.marksStatus}">
    <div class="text-right">
        <g:link action="show" params="[flag: true]" class="btn-outline-info btn" id="${gradeSubject.id}">Add Marks</g:link><br><br>
    </div>
    </g:if>

    <g:form controller="teacher" action="subjectMarks">
    <g:hiddenField name="subject" value="${gradeSubject?.id}"/>
        <table class="table table-striped">
            <thead>
            <tr>
                <th>S.N.</th>
                <th>Student Name</th>
                <g:if test="${flag||teacherGradeSubject.marksStatus}">
                    <th>Obtained Marks</th>
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

                </tr>
            </g:each>
        </table>
        <div class="text-right">
        <g:if test="${flag}">
            <g:submitButton name="submit" class="text-right"></g:submitButton>
        </g:if>
        </div>
    </g:form>

</div>
</body>
</html>