<%@ page import="dssmarksheet.Grade" %>
<g:hiddenField name="id" value="${studentInstance.id}"/>
<div class="form-group">
    <div class="input-group">
        <div class="input-group-addon">
            %{--<span class="glyphicon glyphicon-book"></span>--}%
        </div>
        <g:textField name="name" id="name" value="${studentInstance.name.toString()}" placeholder="Name" class="form-control" required="" autofocus="" />
    </div>
</div>

<div class="form-group">
    <div class="input-group">
        <div class="input-group-addon">
            %{--<span class="glyphicon glyphicon-book"></span>--}%
        </div>

        <g:textField name="rollNo" id="rollNo"  value="${studentInstance.rollNo}" placeholder="roll_no" class="form-control" required="" autofocus="" />
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

