<%-- 
    Document   : vaccinepage
    Created on : Feb 15, 2022, 9:58:04 AM
    Author     : haipr
--%>

<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"  %> 
<!DOCTYPE html>
<html>
    <!-- ======= header ======= -->
    <%@include file="../components/header.jsp" %>
    <main id="main">

        <!-- ======= Breadcrumbs Section ======= -->
        <section class="breadcrumbs">
            <div class="container">

                <div class="d-flex justify-content-between align-items-center">
                    <h2>Inner Page</h2>
                    <ol>
                        <li><a href="index.html">Home</a></li>
                        <li>Inner Page</li>
                    </ol>
                </div>

            </div>
        </section><!-- End Breadcrumbs Section -->

        <div class="container-xl px-4 mt-4">
            <!-- Account page navigation-->
            <hr class="mt-0 mb-4">
            <div class="row">

                <div class="col-xl-12">
                    <!-- Account details card-->
                    ${success}
                    ${error}
                    ${error1}
                    <div class="card mb-4">
                        <form action="changepass" method="POST">
                            <div class="card-body">


                                <!-- Form Group (username)-->


                                <div class="row gx-3 mb-3">
                                    <!-- Form Group (full name)-->
                                    <div class="col-md-12">
                                        <label class="small mb-1" for="inputOldpassword">Old Password</label>
                                        <input class="form-control" id="inputoldpassword" type="text" name="oldpassword" >
                                    </div>
                                </div>
                                <div class="row gx-3 mb-3">
                                    <!-- Form Group (full name)-->
                                    <div class="col-md-12">
                                        <label class="small mb-1" for="inputnewpassword">New Password</label>
                                        <input class="form-control" id="inputnewpassword" type="text" name="newpassword" >
                                    </div>
                                </div>
                                <div class="row gx-3 mb-3">
                                    <!-- Form Group (full name)-->
                                    <div class="col-md-12">
                                        <label class="small mb-1" for="inputrenewpassword">Renew Password</label>
                                        <input class="form-control" id="inputrepassword" type="text" name="repassword" >
                                    </div>
                                </div>

                                <!-- Save changes button-->
                                <button class="btn btn-primary" type="submit" name="submit" >Change Password</button>

                            </div> 
                        </form>
                    </div>
                </div>
            </div>
        </div>


        <!-- ======= Footer ======= -->
        <%@include file="../components/footer.jsp" %>

        <!--<div id="preloader"></div>-->
        <a href="#" class="back-to-top d-flex align-items-center justify-content-center"><i class="bi bi-arrow-up-short"></i></a>

        <!-- Vendor JS Files -->
        <script src="homeAssets/vendor/purecounter/purecounter.js" type="text/javascript"></script>
        <script src="homeAssets/vendor/bootstrap/js/bootstrap.bundle.min.js" type="text/javascript"></script>
        <script src="homeAssets/vendor/glightbox/js/glightbox.min.js" type="text/javascript"></script>
        <script src="homeAssets/vendor/swiper/swiper-bundle.min.js" type="text/javascript"></script>
        <script src="homeAssets/vendor/php-email-form/validate.js" type="text/javascript"></script>

        <!-- Template Main JS File -->
        <script src="assets/js/main.js"></script>

    </body>
</html>
