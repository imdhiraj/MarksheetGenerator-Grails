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
<g:if test="${noData == false}">
<div class="container">
    <div class="row">
        <div class="col-lg-8">

        </div>
        <div class="col-lg-4 text-right">
            <g:submitButton class="btn btn-success" name="Print" value="Print" onclick="printDiv('div_print')"/><br>
        </div>
    </div>
</div>
<div id = "div_print">
    <br>
    <br>
    <div class="container">
        <div class="row">
            <div class="col-lg-4"></div>
            <div class="col-lg-4">
                <asset:image src="logo.png"/>

                <br><br>

            </div>

        </div>
    </div>

    <div class="container">
        <p class="text-center" style="font-weight: bold">Deerwalk Sifal School Examination Evaluation Report</p>
        <hr style="height:1px;border:none;color:#333;background-color:#333;" />
        <div class="row">

            <div class="text-left">
                <p style="font-weight: bold">Name : ${studentInstance.name}</p>
            </div>
            <div class="text-center">
                <p style="margin-left:250px ">Grade No : ${studentInstance.grade}</p>
            </div>
            <div class="text-right">
                <p  style="margin-left:250px "> Roll No : ${studentInstance.rollNo}</p>
            </div>
            <table class="table-bordered table">
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
                <g:set var="marks_total" value="${0}"/>
                <g:set var="full_marks_total" value="${0}"/>

                <g:each in="${gradeSubjectList}" status="i" var="gradeSubject">

                        <% def teacherGradeSubject = TeacherGradeSubject.findByGradeSubject(gradeSubject)

                        def studentMarks = StudentMarks.findByStudentAndTeacherGradeSubject(studentInstance,teacherGradeSubject)
//                        println "studentMarks = $studentMarks"
                        %>
                        <g:if test="${studentMarks}">
                            <tr>
                                <td scope="row">${i +1}</td>
                                <td>${gradeSubject.subjectName}</td>
                        %{--<% def subject = Subject.findBySubjectName(gradeSubject.subjectName)%>--}%
                                <td>${gradeSubject.subjectName.fullMarks}</td>
                                <td>${gradeSubject.subjectName.passMarks}</td>
                                <td>${studentMarks.marksObtained}</td>
                                <g:set var="marks_total" value="${marks_total+studentMarks.marksObtained}"/>
                                <g:set var="full_marks_total" value="${full_marks_total+gradeSubject.subjectName.fullMarks}"/>
                                <td id="grade"><g:grade value="${studentMarks.marksObtained}"></g:grade></td>
                                <td id="gradePoint"><g:gradePoint value="${studentMarks.marksObtained}"/></td>
                            </tr>
                        </g:if>


                    <tr>

                    </tr>
                </g:each>
                <tr>
                    <th colspan="4">Total</th>
                    <td>${marks_total}</td>

                    %{--<g:each in="${gradeSubjectList}" var=" gradeSubject">--}%
                    %{--<th>${studentMarks.marksObtained}+= ${studentMarks.marksObtained}</th>--}%
                    %{--</g:each>--}%

                </tr>


                </tbody>
            </table>
            <div class="row">
                <table class="col-right">

                    <tr>
                        <th>&nbsp&nbsp&nbsp&nbspOverall Grade </th>
                        <td></td>
                        <th id="overallGrade"> :<g:overallGrade value="${(marks_total/full_marks_total)*100}"/></th>
                        </td>
                    </tr>
                    <tr>
                        <th>&nbsp&nbsp&nbsp&nbspGrade Point Average  (GPA)   </th>
                        <td></td>
                        <th id="overallGradePoint">:<g:overallGradePoint value="${(marks_total/full_marks_total)*100}"/>
                        </th>
                    </tr>
                </table>
<br>
            </div>


        </div>

    </div>
    <br>
    <br>

<div class="container">
    <div class="row">
        <div class="text-left">
            <p>Class Teacher's Signature : ____________________________&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp</p>
        </div>
        <div class="text-right">
            <p>Principal/Director Signature : ___________________________</p>

        </div>
    </div>
</div>
<br>
    <div class="container">
        <div class="row">
            <h6 style="font-weight: bolder">Index            <hr style="height:1px;border:none;color:#333;background-color:#333;" />
            </h6>
        </div>
        <div class="row">
            <p>Grade System Information:</p>
        </div>
    </div>
    <div class="container">
    <div class="row">
        %{--<div class="col-md-6">--}%

<br>
        <table  class="table-bordered" style="border: 1px solid;">
        <thead>
            <tr>
                <th>Percentage Obtained</th>
                <th>Grade</th>
                <th>Grade Description</th>
                <th>Grade Point</th>
            </tr>

        </thead>
        <tbody>
            <tr>
                <td>&#62; 90</td>
                <td>A+</td>
                <td>outstanding</td>
                <td>4.0</td>
            </tr>
        <tr>
            <td>80%-89%</td>
            <td>A</td>
            <td>excellent</td>
            <td>3.6</td>
        </tr>
        <tr>
            <td>70%-79%</td>
            <td>B+</td>
            <td>very good</td>
            <td>3.2</td>
        </tr>
        <tr>
            <td>60%-69%</td>
            <td>B</td>
            <td>good</td>
            <td>2.8</td>
        </tr>
        <tr>
            <td>50%-59%</td>
            <td>C+</td>
            <td>above average</td>
            <td>2.4</td>
        </tr>
        <tr>
            <td>40%-49%</td>
            <td>C</td>
            <td> average</td>
            <td>2.0</td>
        </tr>
        <tr>
            <td>20%-39%</td>
            <td>D</td>
            <td>below average</td>
            <td>1.6</td>
        </tr>
        <tr>
            <td>1%-19%</td>
            <td>E</td>
            <td>insufficient</td>
            <td>0.8</td>
        </tr>
        <tr>
            <td>0</td>
            <td>N</td>
            <td>not graded</td>
            <td>0</td>
        </tr>
        </tbody>
        </table>
        %{--</div>--}%
        <br>
    </div>
    </div>
<br>
    </g:if>
    <g:else>
        <div class="text-center">
        <button class="btn-info"> Incomplete Data</button><br>
            <button class="btn-danger"> Please ask teacher to  insert Marks</button>

        </div>
    </g:else>
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