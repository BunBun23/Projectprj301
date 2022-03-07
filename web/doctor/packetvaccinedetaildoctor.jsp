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
                    <h4 class="page-title">VACCINE PACKET DETAIL</h4>
                </div>
            </div>

            <div class="row">
                <div style="margin: 0 auto;" class="col-md-11">
                    <div class="table-responsive">
                        <%
                            ResultSet rsGetVaccineDetail = (ResultSet) request.getAttribute("rsGetVaccineDetail");
                            String packName = (String) request.getAttribute("packName");
                            String PackageID = (String) request.getAttribute("PackageID");
                        %>
                        <p style="text-align: center;font-size: 30px">Vaccine Detail Of " <%=packName%> " have ID :<%=PackageID%></p>
                        <table class="table table-striped custom-table">
                            <thead>
                                <tr>
                                    <th style="text-align: center;width: 50px">Vaccine ID</th>
                                    <th style="text-align: center">Image</th>
                                    <th style="">Vaccine Name</th>
                                    <th>Vaccine Detail</th>
                                    <th style="text-align: center">Vaccine Origin</th>
                                    <th style="text-align: center">Price</th>
                                    <!--<th class="text-right">Action</th>-->
                                </tr>
                            </thead>  
                            <tbody>
                                <%
                                    while (rsGetVaccineDetail.next()) {
                                %>
                                <tr>
                                    <td style="text-align: center"><%= rsGetVaccineDetail.getString(1)%></td>
                                    <td style="text-align: center"><a href="profile.html"><img alt="" src="common/homeAssets/img/<%= rsGetVaccineDetail.getString(6)%>" style="border: 2px solid #DEE2E6; width: 80px;height: 50px"></a></td>
                                    <td style=""><%= rsGetVaccineDetail.getString(2)%></td>
                                    <td><%= rsGetVaccineDetail.getString(5)%></td>
                                    <td style="text-align: center"><%= rsGetVaccineDetail.getString(4)%></td>
                                    <td style="text-align: center;font-weight: bold;font-style: italic;color: #1435C3"><fmt:formatNumber type="number" groupingUsed="true" value="<%= rsGetVaccineDetail.getString(3)%>"  /> <span>VND</span></td>
                                </tr>
                                <%}%>
                            </tbody>
                        </table>

                    </div>
                </div>
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
