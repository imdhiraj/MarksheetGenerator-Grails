<%@ page import="dssmarksheet.Grade" %>
<g:hiddenField name="id" value="${studentInstance.id}"/>
<div class="form-group">
    <div class="input-group">
        <div class="input-group-addon">

        </div>

        <g:textField name="name" id="name" value="${studentInstance?.name}" placeholder="Student Name" class="form-control" required="" autofocus="" />
    </div>
</div>

<div class="form-group">
    <div class="input-group">
        <div class="input-group-addon">
            %{--<span class="glyphicon glyphicon-book"></span>--}%
        </div>

        <input type="number" min="0" max="1000" name="rollNo" id="rollNo"  value="${studentInstance.rollNo}" placeholder="Roll No" class="form-control" required="" autofocus="" />
    </div>
</div>
<div class="form-group">
    <div class="input-group">
        <div class="input-group-addon">
            %{--<span class="glyphicon glyphicon-book"></span>--}%
        </div>

        <g:select name="grade" id="grade" from="${gradeList}" noSelection="['':'--Choose Grade--']" placeholder="class id" optionKey="id"  class="form-control" required="" autofocus="" />

    </div>
</div>


