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

        <div class="page-wrapper">
            <div class="content" >
                <div class="row" >
                </div>

                <div class="row doctor-grid" id="content" style="justify-content: center">
                    <%
                        ResultSet rsGetAllDoctor = (ResultSet) request.getAttribute("rsGetAllDoctor");
                        while (rsGetAllDoctor.next()) {
                            if (rsGetAllDoctor.getInt(12) != 0 || rsGetAllDoctor.getString(12) == null) {
                    %>
                    <div class="col-md-2 mt-4 pt-2 " >
                        <div class="card">
                            <a  href="profiledrhomecontroller?DoctorID=<%=rsGetAllDoctor.getString(1)%>"><img src="admin/assets/img/doctor-thumb-03.jpg" style="border-radius: 350px "
                                                                                             class="card-img-top " alt="..."></a>
                            <div class="card-body pt-3 text-center">
                                <a href="profiledrhomecontroller?DoctorID=<%=rsGetAllDoctor.getString(1)%>" class="card-title text-center " style="font-weight: bold"><%=rsGetAllDoctor.getString(7)%></a>

                            </div>
                            <div class="card-body pt-3 text-center">
                                <%=rsGetAllDoctor.getString(6)%>
                            </div>
                        </div>
                    </div>

                    <%}
                        }%>
                </div>
            </div>
        </div>

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
