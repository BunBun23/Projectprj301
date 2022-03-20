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



        <div class="container-fluid">
            <div class="col-md-12">
                <table class="table table-bordered table-striped" border="0" >
                    <thead>
                        <tr>
                            <th>Vaccine Image</th>
                            <th>Vaccine Name</th>
                            <th>Booking Date</th>
                            <th>Slot Begin</th>
                            <th>Slot End</th>
                            <th>Doctor Name</th>
                            <th>Status</th>
                            <th>Detail</th>
                        </tr>
                    </thead>
                    <tbody>
                        <% ResultSet rsgetresevation = (ResultSet) request.getAttribute("rsgetresevation");
                            while (rsgetresevation.next()) {
                        %>
                        <tr>
                            <td><a href="detail?VaccineId=<%= rsgetresevation.getString(9)%>"><img src="common/homeAssets/img/<%= rsgetresevation.getString(1)%>" style="height: 100px ; width: 100px"></a></td>
                            <td><%= rsgetresevation.getString(2)%></td>
                            <td><%= rsgetresevation.getDate(3)%></td>
                            <td><%= rsgetresevation.getString(7)%></td>
                            <td><%= rsgetresevation.getString(8)%></td>
                            <td><%= rsgetresevation.getString(5)%></td>
                            <td><%= rsgetresevation.getString(6)%></td>
                            <td><%= rsgetresevation.getString(12)%></td>
                        </tr>
                        <%}%>

                    </tbody>
                </table>
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
