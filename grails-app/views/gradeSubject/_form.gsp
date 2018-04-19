<%@ page import="dssmarksheet.Grade" %>

<div class="form-group">
    <div class="input-group">
        <div class="input-group-addon">
            %{--<span class="glyphicon glyphicon-book"></span>--}%
        </div>

        <g:select name="gradeNo" id="gradeNo" from="${gradeList}" noSelection="['':'--Choose Grade--']" optionKey="id" placeholder="class id"  class="form-control" required="" autofocus="" />

    </div>
</div>
<div class="form-group">
    <div class="input-group">
        <div class="input-group-addon">
            %{--<span class="glyphicon glyphicon-book"></span>--}%
        </div>

        <g:select name="subjectName" id="subjectName" from="${subjectList}" noSelection="['':'--Choose Subject--']" optionKey="id" placeholder="class id"  class="form-control" required="" autofocus="" />

    </div>
</div>

