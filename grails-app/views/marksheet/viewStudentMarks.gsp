<%--
  Created by IntelliJ IDEA.
  User: raman
  Date: 4/27/18
  Time: 11:22 AM
--%>

<%@ page import="dssmarksheet.Subject; dssmarksheet.StudentMarks; dssmarksheet.TeacherGradeSubject" contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="main" />

    <title></title>
</head>
<body>
</br>
<div class="container">
    <div class="row">
        <div class="col-lg-8">

        </div>
        <div class="col-lg-4 text-right">
            <g:submitButton name="Print" value="Print" onclick="printDiv('div_print')"/><br>
        </div>
    </div>
</div>
<div id = "div_print">
<div class="container">
    <div class="row">
        <div class="col-lg-4"></div>
        <div class="col-lg-4">
            <asset:image src="logo.png"/><br><br>
        </div>

    </div>
</div>
        <div class="container">
            <div class="row">

                <div class="text-left">
                    <p>Name : ${studentInstance.name}</p>
                </div>
        <div class="text-center">
            <p style="margin-left:350px ">Grade No : ${studentInstance.grade}</p>
        </div>
        <div class="text-right">
            <p  style="margin-left:350px "> Roll No : ${studentInstance.rollNo}</p>
        </div>
            <table class="table">
                <thead>
                <tr>
                    <th scope="col">S.N</th>
                    <th scope="col">Subject</th>
                    <th scope="col">Full Marks</th>
                    <th scope="col">Pass Marks</th>

                    <th scope="col">Marks Obtained</th>
                    <th scope="col">Grade</th>
                    <th scope="col">Grade Point</th>
                </tr>
                </thead>
                <tbody>
                <g:each in="${gradeSubjectList}" status="i" var="gradeSubject">
                    <tr>
                        <td scope="row">${i +1}</td>
                        <td>${gradeSubject.subjectName}</td>
                        <% def subject = Subject.findBySubjectName(gradeSubject.subjectName)%>
                        <td>${subject.fullMarks}</td>
                        <td>${subject.passMarks}</td>
                        <% def teacherGradeSubject = TeacherGradeSubject.findByGradeSubject(gradeSubject)
                        def studentMarks = StudentMarks.findByStudentAndTeacherGradeSubject(studentInstance,teacherGradeSubject)%>
                        <td>${studentMarks.marksObtained}</td>
                    </tr>
                    <tr>

                    </tr>
                </g:each>
                <tr>
                    <th>Total</th>

                        %{--<g:each in="${gradeSubjectList}" var=" gradeSubject">--}%
                    %{--<th>${studentMarks.marksObtained}+= ${studentMarks.marksObtained}</th>--}%
                        %{--</g:each>--}%

                </tr>

                </tbody>
            </table>
    </div>
</div>
</div>
%{--<table>--}%
    %{--<tr>--}%
        %{--<g:each in="${gradeSubjectList}" var="gradeSubject">--}%
            %{--<th>${gradeSubject.subjectName}</th>--}%
            %{--<th></th>--}%
            %{--<% def teacherGradeSubject = TeacherGradeSubject.findByGradeSubject(gradeSubject)--}%
            %{--def studentMarks = StudentMarks.findByStudentAndTeacherGradeSubject(studentInstance,teacherGradeSubject)%>--}%
            %{--<td>${studentMarks.marksObtained}</td>--}%

        %{--</g:each>--}%
    %{--</tr>--}%
    %{--<tr>--}%
        %{--<g:each in="${gradeSubjectList}" var="gradeSubject">--}%

        %{--</g:each>--}%
    %{--</tr>--}%
%{--</table>--}%

<script>
    function printDiv(divName) {
        var printContents = document.getElementById(divName).innerHTML;
        var originalContents = document.body.innerHTML;
        document.body.innerHTML = printContents;
        window.print();
        document.body.innerHTML = originalContents;
    }
</script>
</body>
</html>