<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>


<body class="off-canvas-sidebar">
    <nav class="navbar navbar-primary navbar-transparent navbar-absolute">
        <div class="container">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#navigation-example-2">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="../dashboard.html">Material Dashboard Pro</a>
            </div>
            <div class="collapse navbar-collapse">
                <ul class="nav navbar-nav navbar-right">
                    <li>
                        <a href="../dashboard.html">
                            <i class="material-icons">dashboard</i> Dashboard
                        </a>
                    </li>
                    <li class="">
                        <a href="<%=request.getContextPath()%>/registration">
                            <i class="material-icons">person_add</i> Register
                        </a>
                    </li>
                    <li class="">
                        <a href="login.html">
                            <i class="material-icons">fingerprint</i> Login
                        </a>
                    </li>
                    <li class="">
                        <a href="lock.html">
                            <i class="material-icons">lock_open</i> Lock
                        </a>
                    </li>
                </ul>
            </div>
        </div>
    </nav>
    <div class="wrapper wrapper-full-page">
        <div class="full-page pricing-page" data-image="<%=request.getContextPath()%>/assets/img/bg-pricing.jpg">
            <div class="content">
                <div class="container">
                    <div class="row">
                        <div class="col-md-6 col-md-offset-3 text-center">
                            <h2 class="title">Pick the best plan for you</h2>
                            <h5 class="description">You have Free Unlimited Updates and Premium Support on each package.</h5>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-3">
                            <div class="card card-pricing card-plain">
                                <div class="card-content">
                                    <h6 class="category">Freelancer</h6>
                                    <div class="icon">
                                        <i class="material-icons">weekend</i>
                                    </div>
                                    <h3 class="card-title">FREE</h3>
                                    <p class="card-description">
                                        This is good if your company size is between 2 and 10 Persons.
                                    </p>
                                    <a href="#pablo" class="btn btn-white btn-round">Choose Plan</a>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="card card-pricing card-raised">
                                <div class="card-content">
                                    <h6 class="category">Small Company</h6>
                                    <div class="icon icon-rose">
                                        <i class="material-icons">home</i>
                                    </div>
                                    <h3 class="card-title">$29</h3>
                                    <p class="card-description">
                                        This is good if your company size is between 2 and 10 Persons.
                                    </p>
                                    <a href="#pablo" class="btn btn-rose btn-round">Choose Plan</a>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="card card-pricing card-plain">
                                <div class="card-content">
                                    <h6 class="category">Medium Company</h6>
                                    <div class="icon">
                                        <i class="material-icons">business</i>
                                    </div>
                                    <h3 class="card-title">$69</h3>
                                    <p class="card-description">
                                        This is good if your company size is between 11 and 99 Persons.
                                    </p>
                                    <a href="#pablo" class="btn btn-white btn-round">Choose Plan</a>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="card card-pricing card-plain">
                                <div class="card-content">
                                    <h6 class="category">Enterprise</h6>
                                    <div class="icon">
                                        <i class="material-icons">account_balance</i>
                                    </div>
                                    <h3 class="card-title">$159</h3>
                                    <p class="card-description">
                                        This is good if your company size is 99+ persons.
                                    </p>
                                    <a href="#pablo" class="btn btn-white btn-round">Choose Plan</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            
        </div>
    </div>
</body>
<div class="fixed-plugin">
    <div class="dropdown show-dropdown">
        <a href="#" data-toggle="dropdown">
            <i class="fa fa-cog fa-2x"> </i>
        </a>
        <ul class="dropdown-menu">
            <li class="header-title">Background Style</li>
            <li class="adjustments-line">
                <a href="javascript:void(0)" class="switch-trigger">
                    <p>Background Image</p>
                    <div class="togglebutton switch-sidebar-image">
                        <label>
                            <input type="checkbox" checked="">
                        </label>
                    </div>
                    <div class="clearfix"></div>
                </a>
            </li>
            <li class="adjustments-line">
                <a href="javascript:void(0)" class="switch-trigger active-color">
                    <p>Filters</p>
                    <div class="badge-colors pull-right">
                        <span class="badge filter active" data-color="black"></span>
                        <span class="badge filter badge-blue" data-color="blue"></span>
                        <span class="badge filter badge-green" data-color="green"></span>
                        <span class="badge filter badge-orange" data-color="orange"></span>
                        <span class="badge filter badge-red" data-color="red"></span>
                        <span class="badge filter badge-purple" data-color="purple"></span>
                        <span class="badge filter badge-rose" data-color="rose"></span>
                    </div>
                    <div class="clearfix"></div>
                </a>
            </li>
            <li class="header-title">Background Images</li>
            <li class="active">
                <a class="img-holder switch-trigger" href="javascript:void(0)">
                    <img src="<%=request.getContextPath()%>/assets/img/sidebar-1.jpg" data-src="<%=request.getContextPath()%>/assets/img/login.jpeg" alt="" />
                </a>
            </li>
            <li>
                <a class="img-holder switch-trigger" href="javascript:void(0)">
                    <img src="<%=request.getContextPath()%>/assets/img/sidebar-2.jpg" data-src="<%=request.getContextPath()%>/assets/img/lock.jpeg" alt="" />
                </a>
            </li>
            <li>
                <a class="img-holder switch-trigger" href="javascript:void(0)">
                    <img src="<%=request.getContextPath()%>/assets/img/sidebar-3.jpg" data-src="<%=request.getContextPath()%>/assets/img/header-doc.jpeg" alt="" />
                </a>
            </li>
            <li>
                <a class="img-holder switch-trigger" href="javascript:void(0)">
                    <img src="<%=request.getContextPath()%>/assets/img/sidebar-4.jpg" data-src="<%=request.getContextPath()%>/assets/img/bg-pricing.jpeg" alt="" />
                </a>
            </li>
            <li class="button-container">
                <div class="">
                    <a href="http://www.creative-tim.com/product/material-dashboard-pro" target="_blank" class="btn btn-primary btn-block btn-fill">Buy Now!</a>
                </div>
                <div class="">
                    <a href="http://www.creative-tim.com/product/material-dashboard" target="_blank" class="btn btn-info btn-block">Get Free Demo</a>
                </div>
            </li>
            <li class="header-title">Thank you for 95 shares!</li>
            <li class="button-container">
                <button id="twitter" class="btn btn-social btn-twitter btn-round"><i class="fa fa-twitter"></i> &middot; 45</button>
                <button id="facebook" class="btn btn-social btn-facebook btn-round"><i class="fa fa-facebook-square"></i> &middot; 50</button>
            </li>
        </ul>
    </div>
</div>
</body>
