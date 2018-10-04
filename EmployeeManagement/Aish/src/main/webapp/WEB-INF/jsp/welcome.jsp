<!DOCTYPE html>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html lang="en">
<head>
    <link rel="stylesheet" href="../../css/animate.min.css">
    <link rel="stylesheet" href="../../css/bootstrap.min.css">
    <link rel="stylesheet" href="../../css/font-awesome.min.css">
    <link href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,600,700' rel='stylesheet' type='text/css'>
    <link rel="stylesheet" href="../../css/templatemo-style.css">
    <script src="../../js/jquery.js"></script>
    <script src="../../js/bootstrap.min.js"></script>
    <script src="../../js/jquery.singlePageNav.min.js"></script>
    <script src="../../js/typed.js"></script>
    <script src="../../js/wow.min.js"></script>
    <script src="../../js/custom.js"></script>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <%--<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">--%>
    <%--<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>--%>
    <%--<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>   <!----%>
	<spring:url value="/css/main.css" var="springCss" />
	<link href="${springCss}" rel="stylesheet" />
    <c:url value="/css/main.css" var="jstlCss" />
    <link href="${jstlCss}" rel="stylesheet" />

</head>
<body id="top">

<div class="preloader">
    <div class="sk-spinner sk-spinner-wave">
        <div class="sk-rect1"></div>
        <div class="sk-rect2"></div>
        <div class="sk-rect3"></div>
        <div class="sk-rect4"></div>
        <div class="sk-rect5"></div>
    </div>
</div>

<header>
    <div class="container">
        <div class="row">
            <div class="col-md-3 col-sm-4 col-xs-12">
                <p><i class="fa fa-phone"></i><span> Phone</span>+94758086721</p>
            </div>
            <div class="col-md-3 col-sm-4 col-xs-12">
                <p><i class="fa fa-envelope-o"></i><span> Email</span><a href="mailto:giridesigns5@gmail.com">akayeshmantha@gmail.com</a></p>
            </div>
            <div class="col-md-5 col-sm-4 col-xs-12">
                <ul class="social-icon">
                    <li><span>Meet us on</span></li>
                    <li><a href="#" class="fa fa-facebook"></a></li>
                    <li><a href="#" class="fa fa-twitter"></a></li>
                    <li><a href="#" class="fa fa-instagram"></a></li>
                    <li><a href="https://www.youtube.com/channel/UC4yzoGuKkCL_8FzI-B-x83A" class="fa fa-youtube"></a></li>
                </ul>
            </div>
        </div>
    </div>
</header>
<nav class="navbar navbar-default" style="background: white;">
    <div class="container">
        <div class="navbar-header">
            <a href="#" class="navbar-brand">Truly Employee</a>
        </div>

            <ul class="nav navbar-nav navbar-right">
                <li><a href="/task/welcome" class="current">Home</a></li>
                <li><a href="/employee/list">Employees</a></li>
                <li><a href="/employee/list">Tasks</a></li>
                <li><a href="/role/list">Roles</a></li>
            </ul>
    </div>
</nav>

<section id="home">
    <div class="container">
        <div class="row">
            <div class="col-md-offset-2 col-md-8">
                <h1 class="wow fadeIn" data-wow-offset="50" data-wow-delay="0.9s">Keep it touch with <span>Employees</span></h1>
                <div class="element" style="font-family: Arial">

                    <div class="sub-element">Hello,This is Truly Employee.</div>
                    <div class="sub-element">Awesome Website for Emloyers.</div>
                    <div class="sub-element">If you need this website, Please contact us.</div>

                </div>
                <a data-scroll href="#about" class="btn btn-default wow fadeInUp" data-wow-offset="50" data-wow-delay="0.6s">GET STARTED</a>
            </div>
        </div>
    </div>
</section>

<section id="service">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <h2 class="wow bounceIn" data-wow-offset="50" data-wow-delay="0.3s">OUR <span>AWESOME</span> THINGS</h2>
            </div>
            <div class="col-md-4 wow fadeIn" data-wow-offset="50" data-wow-delay="0.6s">
                <i class="fa fa-laptop"></i>
                <h4>Manage Employees</h4>
                <p>An employee relationship management (ERM) system is an information system that supports the relationship between a company and its employees. Employee relationship management has focused on enabling employees to collaborate on typical managerial tasks with their employers.</p>
            </div>
            <div class="col-md-4 active wow fadeIn" data-wow-offset="50" data-wow-delay="0.9s">
                <i class="fa fa-cloud"></i>
                <h4>Manage Roles</h4>
                <p>Employees' responsibilities. Your role as an employee in this performance management process is to: Work towards achieving your individual goals, which help the organization reach its objectives. You and your manager should have set these goals collaboratively as part of your performance management activities.</p>
            </div>
            <div class="col-md-4 wow fadeIn" data-wow-offset="50" data-wow-delay="0.6s">
                <i class="fa fa-cog"></i>
                <h4>Task Management</h4>
                <p>Task management is the process of managing a task through its life cycle. It involves planning, testing, tracking and reporting. Task management can help either individuals achieve goals, or groups of individuals collaborate and share knowledge for the accomplishment of collective goals.</p>
            </div>
        </div>
    </div>
</section>

<section id="contact">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <h2 class="wow bounceIn" data-wow-offset="50" data-wow-delay="0.3s">CONTACT <span>Us</span></h2>
            </div>
            <div class="col-md-6 col-sm-6 col-xs-12 wow fadeInLeft" data-wow-offset="50" data-wow-delay="0.9s">
                <form action="#" method="post">
                    <label>NAME</label>
                    <input name="fullname" type="text" class="form-control" id="fullname">

                    <label>EMAIL</label>
                    <input name="email" type="email" class="form-control" id="email">

                    <label>MESSAGE</label>
                    <textarea name="message" rows="4" class="form-control" id="message"></textarea>

                    <input type="submit" class="form-control">
                </form>
            </div>
            <div class="col-md-6 col-sm-6 col-xs-12 wow fadeInRight" data-wow-offset="50" data-wow-delay="0.6s">
                <address>
                    <p class="address-title">OUR ADDRESS</p>
                    <span>29/ Nanda M.W Nugegoda.</span>
                    <p><i class="fa fa-phone"></i> +94758086721</p>
                    <p><i class="fa fa-envelope-o"></i> akayeshmantha@gmail.com</p>
                    <p><i class="fa fa-map-marker"></i> 29/1 Nanada M.W Nugegoda.</p>
                </address>
                <ul class="social-icon">
                    <li><h4>WE ARE SOCIAL</h4></li>
                    <li><a href="#" class="fa fa-facebook"></a></li>
                    <li><a href="#" class="fa fa-twitter"></a></li>
                    <li><a href="https://www.youtube.com" class="fa fa-youtube"></a></li>
                </ul>
            </div>
        </div>
    </div>
</section>

<footer id="copyright">
    <div class="container">
        <div class="row">
            <div class="col-md-12 text-center">
                <p class="wow bounceIn" data-wow-offset="50" data-wow-delay="0.3s">
                    Awesome &copy; Copyright 2016. Designed By @Ayesh</p>
            </div>
        </div>
    </div>
</footer>

</body>

</html>