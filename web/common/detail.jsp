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

        <div class="container" style="margin-top: 5rem">
            <% ResultSet rsGetVaccine = (ResultSet) request.getAttribute("rsGetVaccine");
                while (rsGetVaccine.next()) {

            %>
            <div class="row mt-5">
                <div class="col-md-5 mt-5">
                    <div class="mySlides " style="display: block;">
                        <img src="common/homeAssets/img/<%= rsGetVaccine.getString(6)%>" class="w-100">
                    </div>

                </div>
                <div class="col-md-6 pl-5">
                    <h6 class="mt-4"><b>Vaccine Name : <%= rsGetVaccine.getString(2)%></b></h6>
                    <hr>
                    <p class="mt-4"><b style="font-size: 25px;color: #f60"> <fmt:formatNumber type="number" groupingUsed="true" value="<%= rsGetVaccine.getString(3)%>"  /> <span>VND</span></b></p>
                    <hr>
                    <h6 class="mt-4"><b>Vaccine Origin : <%= rsGetVaccine.getString(4)%></b></h6>
                    <hr>
                    <p class="mt-4"><b>Vaccine Detail:</b><br><br><%= rsGetVaccine.getString(5)%></p>
                    <hr>
                </div>
            </div>
            <%}%>
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
