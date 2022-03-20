<%-- 
    Document   : vaccinepage
    Created on : Feb 15, 2022, 9:58:04 AM
    Author     : haipr
--%>

<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"  %> 
<%--<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core"  %>--%>
<!DOCTYPE html>
<html>
    <!-- ======= header ======= -->
    <%@include file="../components/header.jsp" %>
    <main id="main">

        <!-- ======= Breadcrumbs Section ======= -->
        <section class="breadcrumbs">
            <div class="container" style="justify-content: center">

                <div class="d-flex justify-content-between align-items-center">
                    <h2>Inner Page</h2>
                    <ol>
                        <li><a href="index.html">Home</a></li>
                        <li>Inner Page</li>
                    </ol>
                </div>

            </div>
        </section><!-- End Breadcrumbs Section -->

        <%
            ResultSet rsGetDoctorByID = (ResultSet) request.getAttribute("rsGetDoctorByID");
            String status = (String) request.getAttribute("status");
        %>

        <div class="page-wrapper">
            <%
                if (status.equals("0")) {
            %>This Account is Deactive!<%
            } else {
                while (rsGetDoctorByID.next()) {
            %>
            <div class="content">
                <br/>
                <div class="card-box profile-header">
                    <div class="container">
                        <div class="container">
                            <div class="row">
                                <div class="col-6">
                                    <div class="profile-img" >
                                        <a href="#"><img class="avatar" src="admin/assets/img/doctor-03.jpg" style="height: 350px ;width: 350px;border-radius:350px " alt=""></a>
                                    </div>
                                </div>
                                <div class="col-6">
                                    <div class="row">
                                        <div class="col-md-5">
                                            <div class="profile-info-left">
                                                <h3 class="user-name m-t-0 mb-0"><%=rsGetDoctorByID.getString(7)%></h3>
                                                <small class="text-muted">Doctor</small>
                                            </div>
                                        </div>
                                        <div class="col-md-7">
                                            <ul class="personal-info">
                                                <li>
                                                    <span class="title">Phone:</span>
                                                    <span class="text"><a href="#"><%=rsGetDoctorByID.getString(3)%></a></span>
                                                </li>
                                                <li>
                                                    <span class="title">Email:</span>
                                                    <span class="text"><a href="#"><%=rsGetDoctorByID.getString(6)%></a></span>
                                                </li>
                                                <li>
                                                    <span class="title">Address:</span>
                                                    <span class="text"><%=rsGetDoctorByID.getString(8)%></span>
                                                </li>
                                                <li>
                                                    <span class="title">Gender:</span>
                                                    <span class="text"><%=(rsGetDoctorByID.getInt(5) == 0 ? "Female" : "Male")%></span>
                                                </li>
                                            </ul>
                                        </div>
                                    </div>
                                    <div class="col">
                                        <a style="color: black"><%=rsGetDoctorByID.getString(2)%></a>
                                    </div>          
                                </div>

                            </div> 

                        </div>
                    </div>
                </div>
                <%}%>
            </div>
            <%}%>
    </main><!-- End #main -->

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
