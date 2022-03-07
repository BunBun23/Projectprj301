<%-- 
    Document   : home
    Created on : Feb 8, 2022, 11:22:33 PM
    Author     : hai
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <%@include file="../components/header.jsp" %>

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

        <%@include file="../components/footer.jsp" %>

        <!--<div id="preloader"></div>-->
        <a href="#" class="back-to-top d-flex align-items-center justify-content-center"><i
                class="bi bi-arrow-up-short"></i></a>

        <!-- Vendor JS Files -->
        <script src="homeAssets/vendor/purecounter/purecounter.js" type="text/javascript"></script>
        <script src="homeAssets/vendor/bootstrap/js/bootstrap.bundle.min.js" type="text/javascript"></script>
        <script src="homeAssets/vendor/glightbox/js/glightbox.min.js" type="text/javascript"></script>
        <script src="homeAssets/vendor/swiper/swiper-bundle.min.js" type="text/javascript"></script>
        
        <!-- Template Main JS File -->
        <script src="homeAssets/js/main.js" type="text/javascript"></script>
    
</html>
