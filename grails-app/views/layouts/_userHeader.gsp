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
                    <g:link controller="dashboard" class="nav-link" action="index" style="margin-left: 25px;color: #000000">Home </g:link>
                </li>
                <sec:ifNotLoggedIn>
                    <li class="nav-item">
                        <a href="${createLink(action:'index', controller:'login')}" class="nav-link">Login</a>
                    </li>
                </sec:ifNotLoggedIn>
                <sec:ifLoggedIn>
                    <li class="nav-item">
                        <g:link controller="logout" class="nav-link btn btn-sm" style="font-size: medium; margin-left: 705px; "><button class="bnt btn-primary ">Logout</button></g:link>
                    </li>
                </sec:ifLoggedIn>
            </ul>
        </div>
    </nav>
</div>
    %{--<nav class="navbar navbar-dark sticky-top bg-info flex-md-nowrap p-0">--}%
        %{--<a class="navbar-brand col-sm-3 col-md-2 mr-0" href="#"><asset:image src="logo.png"  style="width:150px;" title="DSS" alt="DSS"/></a>--}%
        %{--<ul class="navbar-nav px-3">--}%
        %{--<sec:ifLoggedIn>--}%
            %{--<li class="nav-item text-nowrap btn-light btn bg-secondary btn-sm btn-outline-info">--}%
                %{--<g:link controller="logout" class="nav-link">Logout</g:link>--}%
            %{--</li>--}%
        %{--</sec:ifLoggedIn>--}%
        %{--</ul>--}%
    %{--</nav>--}%

%{--<div class="container-fluid">--}%
    %{--<div class="row">--}%
        %{--<nav class="col-md-2 d-none d-md-block bg-light sidebar" style="height:650px;">--}%
            %{--<div class="sidebar-sticky">--}%
                %{--<ul class="nav flex-column">--}%
                   %{--<li class="nav-item">--}%
                    %{--<g:link controller="dashboard" class="nav-link" action="index">Home </g:link>--}%
                    %{--</li>--}%
                %{--</ul>--}%
                %{--<ul class="nav flex-column mb-2">--}%
                    %{--<li class="nav-item">--}%
                        %{--<a class="nav-link" href="#">--}%
                            %{--<span data-feather="file-text"></span>--}%
                            %{--Current month--}%
                        %{--</a>--}%
                    %{--</li>--}%
                    %{--<li class="nav-item">--}%
                        %{--<a class="nav-link" href="#">--}%
                            %{--<span data-feather="file-text"></span>--}%
                            %{--Last quarter--}%
                        %{--</a>--}%
                    %{--</li>--}%
                    %{--<li class="nav-item">--}%
                        %{--<a class="nav-link" href="#">--}%
                            %{--<span data-feather="file-text"></span>--}%
                            %{--Social engagement--}%
                        %{--</a>--}%
                    %{--</li>--}%
                    %{--<li class="nav-item">--}%
                        %{--<a class="nav-link" href="#">--}%
                            %{--<span data-feather="file-text"></span>--}%
                            %{--Year-end sale--}%
                        %{--</a>--}%
                    %{--</li>--}%
                %{--</ul>--}%
            %{--</div>--}%
        %{--</nav>--}%


%{--</div>--}%