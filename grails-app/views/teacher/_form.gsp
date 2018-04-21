<%@ page import="dssmarksheet.Grade" %>


<div class="form-group">
    <div class="input-group">
        <div class="input-group-addon">
            %{--<span class="glyphicon glyphicon-book"></span>--}%
        </div>
        <g:textField name="teacherName" id="teacherName" value="${teacherInstance.teacherName}" placeholder="Teacher's Name" class="form-control" required="" autofocus="" />
    </div>
</div>
<div class="form-group">
    <div class="input-group">
        <div class="input-group-addon">
            %{--<span class="glyphicon glyphicon-book"></span>--}%
        </div>
        <g:textField name="address" id="address"  value="${teacherInstance.address}"  placeholder="Teacher's Address" class="form-control" required="" autofocus="" />
    </div>
</div><div class="form-group">
    <div class="input-group">
        <div class="input-group-addon">
            %{--<span class="glyphicon glyphicon-book"></span>--}%
        </div>
        <g:textField name="contact" id="contact" value="${teacherInstance.contactNumber}" placeholder="Contact No" class="form-control" required="" autofocus="" />
    </div>
</div>

<div class="form-group">
    <div class="input-group">
        <div class="input-group-addon">
            %{--<span class="glyphicon glyphicon-book"></span>--}%
        </div>
        <g:textField name="email" id="email" value="${teacherInstance.email}" placeholder="Email" class="form-control" required="" autofocus="" />
    </div>
</div>

<div class="form-group">
    <div class="input-group">
        <div class="input-group-addon">
            %{--<span class="glyphicon glyphicon-book"></span>--}%
        </div>
        <g:passwordField name="password" id="password" placeholder="Password" class="form-control" required="" autofocus="" />
    </div>
</div>