<%@ page import="dssmarksheet.Grade" %>
<g:hiddenField name="id" value="${subjectInstance.id}"/>

<div class="form-group">
    <div class="input-group">
        <div class="input-group-addon">
            %{--<span class="glyphicon glyphicon-book"></span>--}%
        </div>
        <g:textField name="subjectName" id="subjectName" value="${subjectInstance.subjectNam}" placeholder=" Subject Name" class="form-control" required="" autofocus="" />
    </div>
</div>

<div class="form-group">
    <div class="input-group">
        <div class="input-group-addon">
            %{--<span class="glyphicon glyphicon-book"></span>--}%
        </div>

        <g:textField name="fullMarks" id="fullMarks" value="${subjectInstance.fullMarks}" placeholder="Full Marks" class="form-control" required="" autofocus="" />
    </div>
</div>

<div class="form-group">
    <div class="input-group">
        <div class="input-group-addon">
            %{--<span class="glyphicon glyphicon-book"></span>--}%
        </div>

        <g:textField name="passMarks" id="passMarks" value="${subjectInstance.passMarks}" placeholder="Pass Marks" class="form-control" required="" autofocus="" />
    </div>
</div>

<div class="form-group">
    <div class="input-group">
        <div class="input-group-addon">
            %{--<span class="glyphicon glyphicon-book"></span>--}%
        </div>

        <g:textField name="theoryMarks" id="theoryMarks"  value="${subjectInstance.theoryMarks}" placeholder="Theory Marks" class="form-control" required="" autofocus="" />
    </div>
</div>
<div class="form-group">
    <div class="input-group">
        <div class="input-group-addon">
            %{--<span class="glyphicon glyphicon-book"></span>--}%
        </div>

        <g:textField name="practicalMarks" id="practicalMarks" value="${subjectInstance.practicalMarks}" placeholder="Practical Marks" class="form-control" required="" autofocus="" />
    </div>
</div>

