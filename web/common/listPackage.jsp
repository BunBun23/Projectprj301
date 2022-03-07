<%@page import="java.util.ArrayList"%>
<%@page import="model.ListPackage"%>
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

        <div class="pagination justify-content-center">
            <div class="pagination justify-content-center">
                <%
                    ArrayList<String> arrayList = (ArrayList<String>) request.getAttribute("list");
                    ArrayList<ListPackage> arrayList1 = (ArrayList<ListPackage>) request.getAttribute("listPack");
                    for (String s : arrayList) {
                %>
                <div>
                    <h1 style="color: #000080"><%=s%></h1>
                    <div>
                        <%
                            ArrayList<String> detaillist = new ArrayList<String>();
                            for (ListPackage listPackage : arrayList1) {
                                if (listPackage.getPackageDetail().equals(s)) {
                                    if (!detaillist.contains(listPackage.getPackageName()) || detaillist.isEmpty() == true) {
                                        detaillist.add(listPackage.getPackageName());
                                    }
                                }
                            }
                            for (String s1 : detaillist) {
                        %>
                        <h3 style="color: #000080"><%=s1%></h3>
                        <div>
                            <table class="table-bordered" style="font-size: 14px; height: 500px;"> 
                                <thead> 
                                    <tr style="height: 42px;"> 
                                        <td style="color: #000080; text-align: center; height: 42px;">
                                            <strong>No.</strong>
                                        </td> 
                                        <td style="color: #000080; text-align: center; height: 42px;">
                                            <strong>Vaccine trade name</strong>
                                        </td> 
                                        <td style="color: #000080; text-align: center; height: 42px;">
                                            <strong>Target antigens or disease</strong>
                                        </td>                     
                                        <td style="color: #000080; text-align: center; height: 42px;">
                                            <strong>Country of manufacture</strong>
                                        </td> 
                                        <td style="color: #000080; text-align: center; height: 42px;" rowspan="1">
                                            <strong>Price<br> </strong>
                                    </tr>
                                </thead>
                                <tbody>
                                    <%
                                        int i = 0;
                                        for (ListPackage listPackage : arrayList1) {

                                            if (listPackage.getPackageDetail().equals(s) && listPackage.getPackageName().equals(s1)) {
                                                i++;
                                    %>
                                    <tr style="height: 21px;">

                                        <td style="text-align: center; height: 21px;" rowspan="1"><%=i%></td> 
                                        <td style="text-align: center; height: 21px;"><a href="detail?VaccineId=<%= listPackage.getVaccineId()%>"><%=listPackage.getVaccineName()%></a>
                                        </td> 
                                        <td style="text-align: left; height: 21px;" rowspan="1"><%=listPackage.getVaccineDetail()%></td>                                                   
                                        <td style="text-align: center; height: 21px;"><%=listPackage.getVaccineOrigin()%></td> 
                                        <td style="text-align: center; height: 21px;" >
                                            <fmt:formatNumber type="number" groupingUsed="true" value="<%= listPackage.getVaccinePrice()%>"/><span> VND</span>
                                        </td> 
                                        <%
                                                }
                                            }
                                        %>
                                </tbody>
                                <tfoot> </tfoot>
                            </table>
                        </div>
                        <%
                                }
                            }
                        %>
                    </div>
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
