<%-- 
    Document   : home
    Created on : Feb 8, 2022, 11:22:33 PM
    Author     : hoang
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta content="width=device-width, initial-scale=1.0" name="viewport">

        <title>FVAX HOME - Index</title>
        <meta content="" name="description">
        <meta content="" name="keywords">

        <!-- Favicons -->
        <link href="assets/img/logo.png" rel="icon">
        <link href="assets/img/logo.png" rel="logo">

        <!-- Google Fonts -->
        <link
            href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Raleway:300,300i,400,400i,500,500i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i"
            rel="stylesheet">

        <!-- Vendor CSS Files -->
        <link href="assets/vendor/fontawesome-free/css/all.min.css" rel="stylesheet">
        <link href="assets/vendor/animate.css/animate.min.css" rel="stylesheet">
        <link href="assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
        <link href="assets/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
        <link href="assets/vendor/boxicons/css/boxicons.min.css" rel="stylesheet">
        <link href="assets/vendor/glightbox/css/glightbox.min.css" rel="stylesheet">
        <link href="assets/vendor/remixicon/remixicon.css" rel="stylesheet">
        <link href="assets/vendor/swiper/swiper-bundle.min.css" rel="stylesheet">

        <!-- Template Main CSS File -->
        <link href="assets/css/style.css" rel="stylesheet">

        <!-- =======================================================
        * Template Name: Medilab - v4.7.1
        * Template URL: https://bootstrapmade.com/medilab-free-medical-bootstrap-theme/
        * Author: BootstrapMade.com
        * License: https://bootstrapmade.com/license/
        ======================================================== -->
    </head>

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

                <h1 class="logo me-auto" style="font-size: 100px;"><a href="index.html">FVAX</a></h1>
                <!-- Uncomment below if you prefer to use an image logo -->
                <!-- <a href="index.html" class="logo me-auto"><img src="assets/img/logo.png" alt="" class="img-fluid"></a>-->

                <nav id="navbar" class="navbar order-last order-lg-0">
                    <ul>
                        <li><a class="nav-link scrollto active" href="#hero">Home</a></li>
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
                        <li><a class="nav-link scrollto" href="#list">List Package</a></li>
                        <li><a class="nav-link scrollto" href="#Price">Price list</a></li>
                        <li><a class="nav-link scrollto" href="#book">book injection</a></li>
                        <li><a class="nav-link scrollto" href="#doctors">Doctors</a></li>
                        <li><a class="nav-link scrollto" href="#news">News</a></li>
                    </ul>
                    <i class="bi bi-list mobile-nav-toggle"></i>
                </nav><!-- .navbar -->
                <c:if test="${sessionScope.accCus == null}">
                    <a href="login" class="appointment-btn scrollto"><span class="bi bi-person-circle" style="font-size: 30px;"></span></a>
                    </c:if>
                    <c:if test="${sessionScope.accCus != null}">
                    <a href="logout" class="appointment-btn scrollto"><span class="bi bi-person-circle" style="font-size: 30px;"></span></a>
                    </c:if>


            </div>
        </header><!-- End Header -->

        <!-- ======= Hero Section ======= -->
        <section id="hero" class="d-flex align-items-center">
            <div class="container">
                <h1>Welcome to FVAX</h1>
                <h2>Convenient, effective, safe</h2>
                <a href="#book" class="btn-get-started scrollto">book injection</a>
            </div>
        </section><!-- End Hero -->

        <main id="main">

            <!-- ======= Why Us Section ======= -->
            <section id="why-us" class="why-us">
                <div class="container">

                    <div class="row">
                        <div class="col-lg-4 d-flex align-items-stretch">
                            <div class="content">
                                <h3>Why Choose Fvax?</h3>
                                <p>
                                    “Immunization is a public health success story. The lives of millions of children have been saved,
                                    millions of people have the opportunity to live healthier lives, have better opportunities to learn,
                                    play, read and write, move freely without the suffering of diseases. physical disability”
                                </p>
                                <div class="text-center">
                                    <a href="#introduce" class="more-btn">More about us<i class="bx bx-chevron-right"></i></a>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-8 d-flex align-items-stretch">
                            <div class="icon-boxes d-flex flex-column justify-content-center">
                                <div class="row">
                                    <div class="col-xl-4 d-flex align-items-stretch">
                                        <div class="icon-box mt-4 mt-xl-0">
                                            <i class="bx bx-receipt"></i>
                                            <h4>prestigious certificate</h4>
                                            <p>With the state-recognized Fvax certificate, you can be assured of vaccination at the center</p>
                                        </div>
                                    </div>
                                    <div class="col-xl-4 d-flex align-items-stretch">
                                        <div class="icon-box mt-4 mt-xl-0">
                                            <i class="bx bx-cube-alt"></i>
                                            <h4>scientific work</h4>
                                            <p>With state-of-the-art equipment we can provide you with the safest and best services</p>
                                        </div>
                                    </div>
                                    <div class="col-xl-4 d-flex align-items-stretch">
                                        <div class="icon-box mt-4 mt-xl-0">
                                            <i class="bx bx-spreadsheet"></i>
                                            <h4>health monitoring</h4>
                                            <p>With a commitment to the health of our customers, we have a health monitoring service to ensure the best results</p>
                                        </div>
                                    </div>
                                </div>
                            </div><!-- End .content-->
                        </div>
                    </div>

                </div>
            </section><!-- End Why Us Section -->

            <!-- ======= About Section ======= -->
            <section id="about" class="about">
                <div class="container-fluid">

                    <div class="row">
                        <div class="col-xl-5 col-lg-6 video-box d-flex justify-content-center align-items-stretch position-relative">
                            <a href="https://www.youtube.com/watch?v=g42VaFGZXsY&t=268s" class="glightbox play-btn mb-4"></a>
                        </div>

                        <div
                            class="col-xl-7 col-lg-6 icon-boxes d-flex flex-column align-items-stretch justify-content-center py-5 px-lg-5">
                            <h3>For one's pleasure is to shun the consequences of something</h3>
                            <p>It was a pleasure to pass, or exercise. We are rejecting this accusation. Not even at the very least,
                                but at the very least cheering for the times. Freed from pleasure but causing physical pains to catch him.
                                They are an intense freedom, and no one is obliged to do so. accepts or gives pleasure.</p>

                            <div class="icon-box">
                                <div class="icon"><i class="bx bx-fingerprint"></i></div>
                                <h4 class="title"><a href="">security</a></h4>
                                <p class="description">We ensure customer information in the most 
                                    secure way to increase peace of mind when customers use the service</p>
                            </div>

                            <div class="icon-box">
                                <div class="icon"><i class="bx bx-support"></i></div>
                                <h4 class="title"><a href="">support</a></h4>
                                <p class="description">The support team is always ready to help 
                                    customers during health monitoring to facilitate the fastest recovery</p>
                            </div>

                            <div class="icon-box">
                                <div class="icon"><i class="bx bxs-user-badge"></i></div>
                                <h4 class="title"><a href="">experienced doctor</a></h4>
                                <p class="description">A team of experienced doctors in the medical field
                                    and have a high responsibility to provide trust to customers to use the service and bring the best results</p>
                            </div>

                        </div>
                    </div>

                </div>
            </section><!-- End About Section -->



            <!-- ======= Services Section ======= -->
            <section id="services" class="services">
                <div class="container">

                    <div class="section-title">
                        <h2>Services</h2>
                        <p>On-Demand Vaccination Service helps customers 
                            to register to reserve vaccines on-demand to receive 
                            the right vaccine, on schedule and at the right price.</p>
                    </div>

                    <div class="row">
                        <div class="col-lg-4 col-md-6 d-flex align-items-stretch">
                            <div class="icon-box">
                                <div class="icon"><i class="fas fa-heartbeat"></i></div>
                                <h4><a href="">customer's health</a></h4>
                                <p>Customer's health is always the priority of Fvax center</p>
                            </div>
                        </div>

                        <div class="col-lg-4 col-md-6 d-flex align-items-stretch mt-4 mt-md-0">
                            <div class="icon-box">
                                <div class="icon"><i class="fas fa-pills"></i></div>
                                <h4><a href="">medical therapy</a></h4>
                                <p>medical therapy recognized by the state as the most effective for the person in need of treatment</p>
                            </div>
                        </div>

                        <div class="col-lg-4 col-md-6 d-flex align-items-stretch mt-4 mt-lg-0">
                            <div class="icon-box">
                                <div class="icon"><i class="fas fa-hospital-user"></i></div>
                                <h4><a href="">prestige center</a></h4>
                                <p>Prestigious centers present all over the country</p>
                            </div>
                        </div>

                        <div class="col-lg-4 col-md-6 d-flex align-items-stretch mt-4">
                            <div class="icon-box">
                                <div class="icon"><i class="fas fa-dna"></i></div>
                                <h4><a href="">data storage</a></h4>
                                <p>Store customer data for convenient delivery and cure next time</p>
                            </div>
                        </div>

                        <div class="col-lg-4 col-md-6 d-flex align-items-stretch mt-4">
                            <div class="icon-box">
                                <div class="icon"><i class="fas fa-wheelchair"></i></div>
                                <h4><a href="">take good care</a></h4>
                                <p>take good care of individuals with special health conditions</p>
                            </div>
                        </div>

                        <div class="col-lg-4 col-md-6 d-flex align-items-stretch mt-4">
                            <div class="icon-box">
                                <div class="icon"><i class="fas fa-notes-medical"></i></div>
                                <h4><a href="">bill</a></h4>
                                <p>Don't worry about the price when you come to the vaccination center</p>
                            </div>
                        </div>

                    </div>

                </div>
            </section><!-- End Services Section -->


            <!-- ======= Testimonials Section ======= -->
            <section id="testimonials" class="testimonials">
                <div class="container">

                    <div class="testimonials-slider swiper" data-aos="fade-up" data-aos-delay="100">
                        <div class="swiper-wrapper">

                            <div class="swiper-slide">
                                <div class="testimonial-wrap">
                                    <div class="testimonial-item">
                                        <img src="assets/img/testimonials/testimonials-1.jpg" class="testimonial-img" alt="">
                                        <h3>Saul Goodman</h3>
                                        <h4>Ceo &amp; Founder</h4>
                                        <p>
                                            <i class="bx bxs-quote-alt-left quote-icon-left"></i>
                                            Proin iaculis purus consequat sem cure digni ssim donec porttitora entum suscipit rhoncus.
                                            Accusantium quam, ultricies eget id, aliquam eget nibh et. Maecen aliquam, risus at semper.
                                            <i class="bx bxs-quote-alt-right quote-icon-right"></i>
                                        </p>
                                    </div>
                                </div>
                            </div><!-- End testimonial item -->

                            <div class="swiper-slide">
                                <div class="testimonial-wrap">
                                    <div class="testimonial-item">
                                        <img src="assets/img/testimonials/testimonials-2.jpg" class="testimonial-img" alt="">
                                        <h3>Sara Wilsson</h3>
                                        <h4>Designer</h4>
                                        <p>
                                            <i class="bx bxs-quote-alt-left quote-icon-left"></i>
                                            Export tempor illum tamen malis malis eram quae irure esse labore quem cillum quid cillum eram malis
                                            quorum velit fore eram velit sunt aliqua noster fugiat irure amet legam anim culpa.
                                            <i class="bx bxs-quote-alt-right quote-icon-right"></i>
                                        </p>
                                    </div>
                                </div>
                            </div><!-- End testimonial item -->

                            <div class="swiper-slide">
                                <div class="testimonial-wrap">
                                    <div class="testimonial-item">
                                        <img src="assets/img/testimonials/testimonials-3.jpg" class="testimonial-img" alt="">
                                        <h3>Jena Karlis</h3>
                                        <h4>Store Owner</h4>
                                        <p>
                                            <i class="bx bxs-quote-alt-left quote-icon-left"></i>
                                            Enim nisi quem export duis labore cillum quae magna enim sint quorum nulla quem veniam duis minim
                                            tempor labore quem eram duis noster aute amet eram fore quis sint minim.
                                            <i class="bx bxs-quote-alt-right quote-icon-right"></i>
                                        </p>
                                    </div>
                                </div>
                            </div><!-- End testimonial item -->

                            <div class="swiper-slide">
                                <div class="testimonial-wrap">
                                    <div class="testimonial-item">
                                        <img src="assets/img/testimonials/testimonials-4.jpg" class="testimonial-img" alt="">
                                        <h3>Matt Brandon</h3>
                                        <h4>Freelancer</h4>
                                        <p>
                                            <i class="bx bxs-quote-alt-left quote-icon-left"></i>
                                            Fugiat enim eram quae cillum dolore dolor amet nulla culpa multos export minim fugiat minim velit
                                            minim dolor enim duis veniam ipsum anim magna sunt elit fore quem dolore labore illum veniam.
                                            <i class="bx bxs-quote-alt-right quote-icon-right"></i>
                                        </p>
                                    </div>
                                </div>
                            </div><!-- End testimonial item -->

                            <div class="swiper-slide">
                                <div class="testimonial-wrap">
                                    <div class="testimonial-item">
                                        <img src="assets/img/testimonials/testimonials-5.jpg" class="testimonial-img" alt="">
                                        <h3>John Larson</h3>
                                        <h4>Entrepreneur</h4>
                                        <p>
                                            <i class="bx bxs-quote-alt-left quote-icon-left"></i>
                                            Quis quorum aliqua sint quem legam fore sunt eram irure aliqua veniam tempor noster veniam enim
                                            culpa labore duis sunt culpa nulla illum cillum fugiat legam esse veniam culpa fore nisi cillum
                                            quid.
                                            <i class="bx bxs-quote-alt-right quote-icon-right"></i>
                                        </p>
                                    </div>
                                </div>
                            </div><!-- End testimonial item -->

                        </div>
                        <div class="swiper-pagination"></div>
                    </div>

                </div>
            </section><!-- End Testimonials Section -->

            <!-- ======= Gallery Section ======= -->
            <section id="gallery" class="gallery">
                <div class="container">

                    <div class="section-title">
                        <h2>infrastructure</h2>
                        <p>In the future, the FVAX vaccination system is expected to open more high-class
                            vaccination centers in Vietnam, bringing 5-star vaccines and vaccination services
                            with stable prices, closer to the people. in all parts of the country.</p>
                    </div>
                </div>

                <div class="container-fluid">
                    <div class="row g-0">

                        <div class="col-lg-3 col-md-4">
                            <div class="gallery-item">
                                <a href="assets/img/gallery/gallery-1.jpg" class="galelry-lightbox">
                                    <img src="assets/img/gallery/gallery-1.jpg" alt="" class="img-fluid">
                                </a>
                            </div>
                        </div>

                        <div class="col-lg-3 col-md-4">
                            <div class="gallery-item">
                                <a href="assets/img/gallery/gallery-2.jpg" class="galelry-lightbox">
                                    <img src="assets/img/gallery/gallery-2.jpg" alt="" class="img-fluid">
                                </a>
                            </div>
                        </div>

                        <div class="col-lg-3 col-md-4">
                            <div class="gallery-item">
                                <a href="assets/img/gallery/gallery-3.jpg" class="galelry-lightbox">
                                    <img src="assets/img/gallery/gallery-3.jpg" alt="" class="img-fluid">
                                </a>
                            </div>
                        </div>

                        <div class="col-lg-3 col-md-4">
                            <div class="gallery-item">
                                <a href="assets/img/gallery/gallery-4.jpg" class="galelry-lightbox">
                                    <img src="assets/img/gallery/gallery-4.jpg" alt="" class="img-fluid">
                                </a>
                            </div>
                        </div>

                        <div class="col-lg-3 col-md-4">
                            <div class="gallery-item">
                                <a href="assets/img/gallery/gallery-5.jpg" class="galelry-lightbox">
                                    <img src="assets/img/gallery/gallery-5.jpg" alt="" class="img-fluid">
                                </a>
                            </div>
                        </div>

                        <div class="col-lg-3 col-md-4">
                            <div class="gallery-item">
                                <a href="assets/img/gallery/gallery-6.jpg" class="galelry-lightbox">
                                    <img src="assets/img/gallery/gallery-6.jpg" alt="" class="img-fluid">
                                </a>
                            </div>
                        </div>

                        <div class="col-lg-3 col-md-4">
                            <div class="gallery-item">
                                <a href="assets/img/gallery/gallery-7.jpg" class="galelry-lightbox">
                                    <img src="assets/img/gallery/gallery-7.jpg" alt="" class="img-fluid">
                                </a>
                            </div>
                        </div>

                        <div class="col-lg-3 col-md-4">
                            <div class="gallery-item">
                                <a href="assets/img/gallery/gallery-8.jpg" class="galelry-lightbox">
                                    <img src="assets/img/gallery/gallery-8.jpg" alt="" class="img-fluid">
                                </a>
                            </div>
                        </div>

                    </div>

                </div>
            </section><!-- End Gallery Section -->

            <!-- ======= Contact Section ======= -->
            <section id="contact" class="contact">
                <div class="container">

                    <div class="section-title">
                        <h2>Contact</h2>
                        <p>Please leave a question or complaint for us so we can help you as quickly as possible</p>
                    </div>
                </div>

                <div>
                    <iframe style="border:0; width: 100%; height: 350px;"
                            src="https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d10533.992325587033!2d105.52826779016505!3d21.019529843835247!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0xaae6040cfabe8fe!2zVHLGsOG7nW5nIMSQ4bqhaSBI4buNYyBGUFQ!5e0!3m2!1svi!2s!4v1644306286579!5m2!1svi!2s"
                            frameborder="0" allowfullscreen></iframe>
                </div>


            </section><!-- End Contact Section -->

        </main><!-- End #main -->

        <!-- ======= Footer ======= -->
        <footer id="footer">

            <div class="footer-top">
                <div class="container">
                    <div class="row">

                        <div class="col-lg-3 col-md-6 footer-contact">
                            <h3>FVAX</h3>
                            <p>
                                Hoa Lac <br>
                                Ha Noi , Thach That<br>
                                Viet Nam <br><br>
                                <strong>Phone:</strong> +84963418230<br>
                                <strong>Email:</strong> info@example.com<br>
                            </p>
                        </div>

                        <div class="col-lg-2 col-md-6 footer-links">
                            <h4>Useful Links</h4>
                            <ul>
                                <li><i class="bx bx-chevron-right"></i> <a href="#">Home</a></li>
                                <li><i class="bx bx-chevron-right"></i> <a href="#">About us</a></li>
                                <li><i class="bx bx-chevron-right"></i> <a href="#">Services</a></li>
                                <li><i class="bx bx-chevron-right"></i> <a href="#">Terms of service</a></li>
                                <li><i class="bx bx-chevron-right"></i> <a href="#">Privacy policy</a></li>
                            </ul>
                        </div>

                        <div class="col-lg-3 col-md-6 footer-links">
                            <h4>Our Services</h4>
                            <ul>
                                <li><i class="bx bx-chevron-right"></i> <a href="#">Web Design</a></li>
                                <li><i class="bx bx-chevron-right"></i> <a href="#">Web Development</a></li>
                                <li><i class="bx bx-chevron-right"></i> <a href="#">Product Management</a></li>
                            </ul>
                        </div>

                        <div class="col-xs-12 col-sm-4 col-md-4">
                            <h5>Contact</h5>

                            <ul class="list-unstyled quick-links">
                                <li><a><i class="fas fa-phone-volume"></i>0123456789</a><a><i
                                            class="fa fa-envelope ml-3"></i>haidhhe151032@fpt.edu.vn</a></li>
                                <li><a
                                        href="https://www.google.com/maps?ll=20.994897,105.523648&amp;z=15&amp;t=m&amp;hl=vi&amp;gl=US&amp;mapclient=embed&amp;saddr=QL21,+Th%E1%BA%A1ch+Ho%C3%A0,+Th%E1%BA%A1ch+Th%E1%BA%A5t,+H%C3%A0+N%E1%BB%99i&amp;daddr=Ng%C3%A3+ba+H%C3%B2a+L%E1%BA%A1c+-+QL+21,+H%C3%B2a+L%E1%BA%A1c,+Th%E1%BA%A1ch+Th%E1%BA%A5t,+H%C3%A0+N%E1%BB%99i&amp;dirflg=d"><i
                                            class="fa fa-angle-double-right"></i>21, Thôn 6, Xã Thạch Hòa, Huyện Thạch Thất, Hà
                                        Nội, Việt Nam</a></li>
                                <div id="map" style="height:150px;">
                                    <iframe
                                        src="https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d10533.992325587033!2d105.52826779016505!3d21.019529843835247!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0xaae6040cfabe8fe!2zVHLGsOG7nW5nIMSQ4bqhaSBI4buNYyBGUFQ!5e0!3m2!1svi!2s!4v1644306286579!5m2!1svi!2s"
                                        width="250" height="100" frameborder="0" style="border:0;" allowfullscreen=""></iframe>
                                </div>
                            </ul>
                        </div>

                    </div>
                </div>
            </div>

            <div class="container d-md-flex py-4">

                <div class="me-md-auto text-center text-md-start">
                    <div class="copyright">
                        &copy; Copyright <strong><span>FVAX</span></strong>. All Rights Reserved
                    </div>
                    <div class="credits">
                        <!-- All the links in the footer should remain intact. -->
                        <!-- You can delete the links only if you purchased the pro version. -->
                        <!-- Licensing information: https://bootstrapmade.com/license/ -->
                        <!-- Purchase the pro version with working PHP/AJAX contact form: https://bootstrapmade.com/medilab-free-medical-bootstrap-theme/ -->
                        Designed by <a href="https://bootstrapmade.com/">BootstrapMade</a>
                    </div>
                </div>
                <div class="social-links text-center text-md-right pt-3 pt-md-0">
                    <a href="https://www.facebook.com/haihongduong/" class="facebook"><i class="bx bxl-facebook"></i></a>
                    <a href="https://www.instagram.com/hai.t45.insta/" class="instagram"><i class="bx bxl-instagram"></i></a>
                </div>
            </div>
        </footer><!-- End Footer -->

        <div id="preloader"></div>
        <a href="#" class="back-to-top d-flex align-items-center justify-content-center"><i
                class="bi bi-arrow-up-short"></i></a>

        <!-- Vendor JS Files -->
        <script src="assets/vendor/purecounter/purecounter.js"></script>
        <script src="assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
        <script src="assets/vendor/glightbox/js/glightbox.min.js"></script>
        <script src="assets/vendor/swiper/swiper-bundle.min.js"></script>
        <script src="assets/vendor/php-email-form/validate.js"></script>

        <!-- Template Main JS File -->
        <script src="assets/js/main.js"></script>

    </body>
</html>
