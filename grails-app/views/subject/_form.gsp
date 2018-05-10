<%@ page import="dssmarksheet.Grade" %>
<g:hiddenField name="id" value="${subjectInstance.id}"/>

<div class="form-group">
    <label class="text-center">Subject Name <br></label>

    <div class="input-group">
        <div class="input-group-addon">
            %{--<span class="glyphicon glyphicon-book"></span>--}%
        </div>
        <g:textField name="subjectName" id="subjectName" value="${subjectInstance.subjectName}" placeholder=" Subject Name" class="form-control" required="" autofocus="" />
    </div>
</div>

<div class="form-group">
    <label class="text-center">Full Marks  : <br></label>

    <div class="input-group">
        <div class="input-group-addon">
            %{--<span class="glyphicon glyphicon-book"></span>--}%
        </div>

        <input type="number" min="0" max="100" name="fullMarks" id="fullMarks" value="${subjectInstance.fullMarks}" placeholder="Full Marks" class="form-control" required="" autofocus="" />
    </div>
</div>

<div class="form-group">
    <label class="text-center">Pass Marks  : <br></label>

    <div class="input-group">
        <div class="input-group-addon">
            %{--<span class="glyphicon glyphicon-book"></span>--}%
        </div>

        <input type="number" max="100" min="0" name="passMarks" id="passMarks" value="${subjectInstance.passMarks}" placeholder="Pass Marks" class="form-control" required="" autofocus="" />
    </div>
</div>

<div class="form-group">
    <label class="text-center">Theory Marks  : <br></label>

    <div class="input-group">
        <div class="input-group-addon">
            %{--<span class="glyphicon glyphicon-book"></span>--}%
        </div>

        <input type="number" max="100" min="0" name="theoryMarks" id="theoryMarks"  value="${subjectInstance?.theoryMarks}" placeholder="Theory Marks" class="form-control" required="" autofocus="" />
    </div>
</div>
<div class="form-group">
    <label class="text-center">Practical Marks  : <br></label>
    <div class="input-group">
        <div class="input-group-addon">
            %{--<span class="glyphicon glyphicon-book"></span>--}%
        </div>

        <input type="number" max="100" min="0" name="practicalMarks" id="practicalMarks" value="${subjectInstance.practicalMarks}" placeholder="Practical Marks" class="form-control" required="" autofocus="" />
    </div>
</div>

