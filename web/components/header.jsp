<%-- 
    Document   : header
    Created on : Oct 13, 2021, 7:07:49 PM
    Author     : win
--%>

<%@page import="model.Account"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

    <meta charset="utf-8">
    <meta content="width=device-width, initial-scale=1.0" name="viewport">

    <title>FVAX HOME - Index</title>
    <meta content="" name="description">
    <meta content="" name="keywords">

    <!-- Favicons -->
    <link href="common/homeAssets/img/logo.png" rel="icon">
    <link href="common/homeAssets/img/logo.png" rel="logo">

    <!-- Google Fonts -->
    <link
        href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Raleway:300,300i,400,400i,500,500i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i"
        rel="stylesheet">

    <!-- Vendor CSS Files -->
    <link href="common/homeAssets/vendor/fontawesome-free/css/all.min.css" rel="stylesheet">
    <link href="common/homeAssets/vendor/animate.css/animate.min.css" rel="stylesheet">
    <link href="common/homeAssets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <link href="common/homeAssets/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
    <link href="common/homeAssets/vendor/boxicons/css/boxicons.min.css" rel="stylesheet">
    <link href="common/homeAssets/vendor/glightbox/css/glightbox.min.css" rel="stylesheet">
    <link href="common/homeAssets/vendor/remixicon/remixicon.css" rel="stylesheet">
    <link href="common/homeAssets/vendor/swiper/swiper-bundle.min.css" rel="stylesheet">

    <!-- Template Main CSS File -->
    <link href="common/homeAssets/css/style.css" rel="stylesheet" type="text/css"/>
    <!-- =======================================================
    * Template Name: Medilab - v4.7.1
    * Template URL: https://bootstrapmade.com/medilab-free-medical-bootstrap-theme/
    * Author: BootstrapMade.com
    * License: https://bootstrapmade.com/license/
    ======================================================== -->

<body>

    <!-- ======= Top Bar ======= -->
    <div id="topbar" class="d-flex align-items-center fixed-top">
        <div class="container d-flex justify-content-between">
            <div class="contact-info d-flex align-items-center">
                <i class="bi bi-envelope"></i> <a href="mailto:haidhhe151032@fpt.edu.vn">haidhhe151032@fpt.edu.vn</a>
                <i class="bi bi-phone"></i> +48963418230
            </div>
            <div class="d-none d-lg-flex social-links align-items-center">
                <a href="#" class="twitter"><i class="bi bi-twitter"></i></a>
                <a href="#" class="facebook"><i class="bi bi-facebook"></i></a>
                <a href="#" class="instagram"><i class="bi bi-instagram"></i></a>
                <a href="#" class="linkedin"><i class="bi bi-linkedin"></i></a>
            </div>
        </div>
    </div>

    <!-- ======= Header ======= -->
    <header id="header" class="fixed-top">
        <div class="container d-flex align-items-center">

            <h1 class="logo me-auto" style="font-size: 100px;"><a href="home">FVAX</a></h1>

            <nav id="navbar" class="navbar order-last order-lg-0">
                <ul>
                    <li><a class="nav-link scrollto" href="home">Home</a></li>
                    <li><a class="nav-link scrollto" href="#introduce">Introduce</a></li>
                    <li class="dropdown"><a href="#service"><span>Services</span> <i class="bi bi-chevron-down"></i></a>
                        <ul>
                            <li><a href="#">vaccination against covid</a></li>
                            <li class="dropdown"><a href="#"><span>Vaccinations for children</span> <i
                                        class="bi bi-chevron-right"></i></a>
                                <ul>
                                    <li><a href="#">VACCINES FOR CHILDREN 0-9 MONTHS</a></li>
                                    <li><a href="#">(0-12 MONTH PACK AND 0-24 MONTH PACKAGE)</a></li>
                                    <li><a href="#">VACCINES FOR BABIES 6-24 MONTH</a></li>
                                    <li><a href="#">VACCINES FOR CHILDREN 12-24 MONTHS</a></li>
                                </ul>
                            </li>
                            <li><a href="#">VACCINES FOR SMALL Mature adults</a></li>
                            <li><a href="#">VACCINES FOR WOMEN PREPARING PREGNANCY</a></li>
                            <li><a href="#">VACCINES FOR Adolescents and Adolescents</a></li>
                        </ul>
                    </li>
                    <li><a class="nav-link scrollto" href="listPackage">List Package</a></li>
                    <li><a class="nav-link scrollto" href="vaccinep">List Vaccine</a></li>
                    <li><a class="nav-link scrollto" href="#book">Book Injection</a></li>
                    <li><a class="nav-link scrollto" href="#doctors">Doctors</a></li>
                    <li><a class="nav-link scrollto" href="#news">News</a></li>
                    <li><a class="nav-link scrollto" href="feedback">FeedBack</a></li>
                   &emsp;
                    <div class="btn-group">
                        <c:choose>
                            <c:when test="${sessionScope.acc==null}">
                                <a  style="font-size: 15px" href="login"> 
                                    Login
                                    <i class="bi bi-person-circle" style="font-size: 15px"></i>
                                </a>
                            </c:when>
                            <c:otherwise>
                                <li class="dropdown"><a href="#"> 
                                        <i class="bi bi-person-circle " style="font-size: 15px; "> ${sessionScope.username}</i></a>
                                    <ul>
                                        <li><a href="customerpf">My Profile</a></li>
                                            <c:if test="${sessionScope.acc.role==customer}">
                                            <li><a class="dropdown-item mr-5" href="#">Setting</a></li>
                                            <li><a class="dropdown-item mr-5" href="#">My Injection History</a></li>
                                            </c:if>
                                            <c:if test="${sessionScope.acc.role==admin}">
                                            <li><a class="dropdown-item mr-5" href="homeadmin">Admin Home</a></li>
                                            </c:if>
                                        <li>
                                            <div class="dropdown-divider"></div>
                                        </li>
                                        <li><a href="logout">Logout</a></li>

                                    </ul>
                                </li>


                            </c:otherwise>
                        </c:choose>

                    </div>
                </ul>
                <i class="bi bi-list mobile-nav-toggle"></i>
            </nav><!-- .navbar -->
        </div>
    </header><!-- End Header -->
