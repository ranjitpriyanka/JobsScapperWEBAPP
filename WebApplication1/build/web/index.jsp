<%-- 
    Document   : index
    Created on : Mar 21, 2016, 12:47:15 PM
    Author     : priyankar
--%>

<%@page import="java.util.regex.Matcher"%>
<%@page import="java.util.regex.Pattern"%>
<%@page import="java.io.InputStreamReader"%>
<%@page import="java.io.BufferedReader"%>
<%@page import="java.net.URLConnection"%>
<%@page import="java.net.URL"%>
<%@include file="header.jsp" %>
<!-- Navigation -->
<a id="menu-toggle" href="#" class="btn btn-dark btn-lg toggle"><i class="fa fa-bars"></i></a>
<nav id="sidebar-wrapper" >
    <ul class="sidebar-nav">
        <a id="menu-close" href="#" class="btn btn-light btn-lg pull-right toggle"><i class="fa fa-times"></i></a>
        <li class="sidebar-brand">
            <a href="#top"  onclick = $("#menu-close").click(); >Start Bootstrap</a>
        </li>
        <li>
            <a href="#top" onclick = $("#menu-close").click(); >Home</a>
        </li>
        <li>
            <a href="#about" onclick = $("#menu-close").click(); >About</a>
        </li>
        <li>
            <a href="#services" onclick = $("#menu-close").click(); >Services</a>
        </li>
        <li>
            <a href="#portfolio" onclick = $("#menu-close").click(); >Portfolio</a>
        </li>
        <li>
            <a href="#contact" onclick = $("#menu-close").click(); >Contact</a>
        </li>
    </ul>
</nav>

<!-- Header -->
<header id="top" class="header">
    <div class="text-vertical-center">
        <b><h1>Job Seekers!!!</h1>
            <h2>Hot Online Jobs</h2>
            <h3>A step ahead towards your career</h3>
        </b><br>
        <a href="#about" class="btn btn-dark btn-lg">Find Out More</a>
    </div>
</header>

<!-- About -->
<section id="about" class="about">
    <div class="container">
        <div class="row">
            <div class="col-lg-12 text-center">
                <h2>A friend's Help-hand for exploring new opportunities!</h2>
                <p class="lead">This page is for all the job seeker.</p>
            </div>
        </div>
        <!-- /.row -->
    </div>
    <!-- /.container -->
</section>
<!-- Services -->
<!-- The circle icons use Font Awesome's stacked icon classes. For more information, visit http://fontawesome.io/examples/ -->
<section id="services" class="services bg-success">
    <div class="container">
        <div class="row text-center">
            <div class="col-lg-10 col-lg-offset-1">
                <h2>Our Services</h2>
                <hr class="small">
                <div class="row">
                    <div class="col-md-3 col-sm-6">
                        <div class="service-item">
                            <img src="img\iconj.jpg">
                            </span>
                            <h4>
                                <strong>Jobs Nepal</strong>
                            </h4>
                            <p>All the vacancies published in JobsNepal.</p>
                            <a href="jobsnepal.jsp" class="btn btn-light">Learn More</a>
                        </div>
                    </div>
                    <div class="col-md-3 col-sm-6">
                        <div class="service-item">
                            <img src="img\icon.jpg">
                            </span>
                            <h4>
                                <strong>Mero Job</strong>
                            </h4>
                            <p>All the vacancies published in MeroJob.</p>

                            <a href="merojob.jsp" class="btn btn-light">Learn More</a>
<!--                            <form action = "contact.jsp">
                                <input type="submit" value="open other jsp">
                            </form>-->
                        </div>
                    </div>
                    <div class="col-md-3 col-sm-6">
                        <div class="service-item">
                            <span class="fa-stack fa-4x">
                                <i class="fa fa-square fa-stack-2x"></i>
                                <i class="fa fa-group fa-stack-1x fa-inverse"></i>
                            </span>
                            <h4>
                                <strong>Networking</strong>
                            </h4>
                            <p>Get Connected and Follow people.</p>
                            <a href="#" class="btn btn-light">Learn More</a>
                        </div>
                    </div>
                    <div class="col-md-3 col-sm-6">
                        <div class="service-item">
                            <span class="fa-stack fa-4x">
                                <i class="fa fa-square fa-stack-2x"></i>
                                <i class="fa fa-legal fa-stack-1x fa-inverse"></i>
                            </span>
                            <h4>
                                <strong>Login Authentication</strong>
                            </h4>
                            <p>Make your profile and sign in.</p>
                            <a href="#" class="btn btn-light">Learn More</a>
                        </div>
                    </div>
                </div>
                <!-- /.row (nested) -->
            </div>
            <!-- /.col-lg-10 -->
        </div>
        <!-- /.row -->
    </div>
    <!-- /.container -->
</section>

<!-- Callout -->
<aside class="callout">
    <div class="text-vertical-center">
        <h1>Stand-out and Feel Your Presence.</h1>
    </div>
</aside>

<!-- Portfolio -->
<section id="portfolio" class="portfolio">
    <div class="container">
        <div class="row">
            <div class="col-lg-10 col-lg-offset-1 text-center">
                <h2>Our Work</h2>
                <hr class="small">
                <div class="row">
                    <div class="col-md-6">
                        <div class="portfolio-item">
                            <a href="#">
                                <img class="img-portfolio img-responsive" src="img/portfolio-11.jpg">

                            </a> Prepare for an Interview.
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="portfolio-item">
                            <a href="#">
                                <img class="img-portfolio img-responsive" src="img/portfolio-21.jpg">
                            </a>Build your future.
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="portfolio-item">
                            <a href="#">
                                <img class="img-portfolio img-responsive" src="img/portfolio-31.jpg">
                            </a>Get Updated
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="portfolio-item">
                            <a href="#">
                                <img class="img-portfolio img-responsive" src="img/portfolio-41.jpg">
                            </a>Get Synchronized
                        </div>
                    </div>
                </div>
                <!-- /.row (nested) -->
                <a href="#" class="btn btn-dark">View More Items</a>
            </div>
            <!-- /.col-lg-10 -->
        </div>
        <!-- /.row -->
    </div>
    <!-- /.container -->
</section>




<%@include file="footer.jsp" %>