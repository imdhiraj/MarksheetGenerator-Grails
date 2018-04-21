<%@ page import="dssmarksheet.Grade" %>


<div class="form-group">
    <div class="input-group">
        <div class="input-group-addon">
            %{--<span class="glyphicon glyphicon-book"></span>--}%
        </div>

        <g:select name="teacherName" id="teacherName" from="${teacherList}" noSelection="['':'--Choose Teacher--']" optionKey="id" placeholder="class id"  class="form-control" required="" autofocus="" />

    </div>
</div>
<div class="form-group">
    <div class="input-group">
        <div class="input-group-addon">
            %{--<span class="glyphicon glyphicon-book"></span>--}%
        </div>

        <g:select name="gradeSubject" id="gradeSubject" from="${gradeSubjectList}" noSelection="['':'--Choose Grade Subject--']" optionKey="id" placeholder="class id"  class="form-control" required="" autofocus="" />

    </div>
</div>
