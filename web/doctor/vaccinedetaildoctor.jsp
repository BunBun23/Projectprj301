<%-- 
    Document   : listVaccine
    Created on : 08-02-2022, 22:28:28
    Author     : a
--%>

<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"  %> 
<!DOCTYPE html>
<html lang="en">


    <!-- employees23:21-->
    <%@include file="components/headerdoctor.jsp" %>
    <div class="page-wrapper">
        <div class="content">
            <div class="row">
                <div class="col-sm-4 col-3">
                    <h4 class="page-title">VACCINE DETAIL</h4>
                </div>
            </div>

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
        </div>
        <%@include file="components/footerdoctor.jsp" %>        
        <div class="sidebar-overlay" data-reff=""></div>
        <script src="admin/assets/js/jquery-3.2.1.min.js"></script>
        <script src="admin/assets/js/popper.min.js"></script>
        <script src="admin/assets/js/bootstrap.min.js"></script>
        <script src="admin/assets/js/jquery.dataTables.min.js"></script>
        <script src="admin/assets/js/dataTables.bootstrap4.min.js"></script>
        <script src="admin/assets/js/jquery.slimscroll.js"></script>
        <script src="admin/assets/js/select2.min.js"></script>
        <script src="admin/assets/js/moment.min.js"></script>
        <script src="admin/assets/js/bootstrap-datetimepicker.min.js"></script>
        <script src="admin/assets/js/app.js"></script>
        <script src="admin/assets/js/activeTaskbar.js" type="text/javascript"></script>
    </body>


    <!-- employees23:22-->
</html>
