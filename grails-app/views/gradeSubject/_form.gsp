<%@ page import="dssmarksheet.Grade" %>
<g:if test="${grade}">
    <div class="form-group">
        <div class="input-group">
            <div class="input-group-addon">
                %{--<span class="glyphicon glyphicon-book"></span>--}%
            </div>

            <g:textField name="gradeNo" id="gradeNo" value="${grade}" placeholder="class id"  class="form-control" required="" autofocus="" />

        </div>
    </div>
</g:if>
<g:else>
    <div class="form-group">
        <div class="input-group">
            <div class="input-group-addon">
                %{--<span class="glyphicon glyphicon-book"></span>--}%
            </div>

            <g:select name="gradeNo" id="gradeNo" from="${gradeList}" noSelection="['':'--Choose Grade--']" optionKey="id" placeholder="class id"  class="form-control" required="" autofocus="" />

        </div>
    </div>
</g:else>
<div class="form-group">
    <div class="input-group">
        <div class="input-group-addon">
            %{--<span class="glyphicon glyphicon-book"></span>--}%
        </div>

        <g:select name="subjectName" id="subjectName" from="${subjectList}" noSelection="['':'--Choose Subject--']" optionKey="id" placeholder="class id"  class="form-control" required="" autofocus="" />

    </div>
</div>

