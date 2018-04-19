<div class="container">
        <nav class="navbar navbar-expand-lg navbar-light bg-light">
            <a class="navbar-brand homeNavLogo" id= "toplogobrand" href="#">
                <asset:image src="logo.png"  style="width:150px;" title="DSS" alt="DSS"/>
            </a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav">
                    <li class="nav-item">
                        <g:link controller="dashboard" class="nav-link" action="index">Home </g:link>
                    </li>
                    <li class="nav-item">
                        <g:link controller="student" class="nav-link" action="index">View Student</g:link>
                    </li> <li class="nav-item">
                        <g:link controller="subject" class="nav-link" action="index">View Subject</g:link>
                    </li>
                    <li class="nav-item">
                        <g:link controller="teacher" class="nav-link" action="index">View Teacher</g:link></li>
                    <li class="nav-item">
                        <g:link controller="gradeSubject" class="nav-link" action="index">View Grade Subject</g:link></li>
                    <sec:ifNotLoggedIn>
                        <li class="nav-item">
                            <a href="${createLink(action:'index', controller:'login')}" class="nav-link">Login</a>
                        </li>
                    </sec:ifNotLoggedIn>
                    <sec:ifLoggedIn>
                        <li class="nav-item">
                            <g:link controller="logout" class="nav-link">Logout</g:link>
                        </li>
                    </sec:ifLoggedIn>
                </ul>
            </div>
        </nav>
</div>