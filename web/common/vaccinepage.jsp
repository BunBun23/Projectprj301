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
        <form action="vaccinep" method="POST">
            <div class="pagination justify-content-end" >
                <table  border="0">
                    <tbody>
                        <tr>
                            <td><input class="search-box" type="text" name="txtsearch" size="15"></td>
                            <td> <input type="submit" name="btnSearch" value="Search" /></td>
                        </tr>
                    </tbody>
                </table>
            </div>
        </form>
        <c:if test="${rslistvaccine==null}">
            <div class="col-md-12" style="text-align: center;">
                <h3>none vaccines contain name like this</h3>
            </div>
        </c:if>
        <div class="row">
            <div class="col-md-12">
                <h5 class="labelhead"></h5>
                <div class="row mb-5">
                    <!-- Show vaccine -->
                    <% ResultSet rslistvaccine = (ResultSet) request.getAttribute("rslistvaccine");
                        while (rslistvaccine.next()) {
                    %>
                    <div class="col-md-3 mt-4 pt-2">
                        <div class="card">
                            <a href="detail?VaccineId=<%= rslistvaccine.getString(1)%>"><img src="common/homeAssets/img/<%= rslistvaccine.getString(6)%>" style="border: 2px solid #4792d6;"
                                                                                             class="card-img-top pt-4" alt="..."></a>
                            <div class="card-body pt-3 text-center">
                                <a href="detail?VaccineId=<%= rslistvaccine.getString(1)%>" class="card-title text-center " style="font-weight: bold"><%= rslistvaccine.getString(2)%></a>

                            </div>
                            <div class="card-body pt-3 text-center">
                                <a href="detail?VaccineId=<%= rslistvaccine.getString(1)%>" style="font-style: italic">
                                    <fmt:formatNumber type="number" groupingUsed="true" value="<%= rslistvaccine.getString(3)%>"  /> <span>VND</span>
                                </a>
                            </div>
                        </div>
                    </div>

                    <%}%>
                </div>
                <c:if test="${endp>1}">
                    <nav aria-label="Page navigation example">
                        <ul class="pagination justify-content-end">
                            <li class="page-item ${index<=1?"disabled":""}">
                                <a class=" page-link" href="vaccinep?index=${index-1}">Previous</a>
                            </li>
                            <c:forEach begin="1" end="${endp}" var="i">
                                <li class="page-item ${i==index?"active":""} "><a class="page-link" href="vaccinep?index=${i}">${i}</a></li>
                                </c:forEach>
                            <li class="page-item ${index>=endp?"disabled":""}">
                                <a class=" page-link" href="vaccinep?index=${index+1}">Next</a>
                            </li>
                        </ul>
                    </nav>
                </c:if>

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
