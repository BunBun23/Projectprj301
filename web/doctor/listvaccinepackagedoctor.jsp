<%-- 
    Document   : listVaccinePackage
    Created on : 23-02-2022, 00:21:31
    Author     : a
--%>

<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"  %> 
<html lang="en">
    <%@include file="components/headerdoctor.jsp" %>
    <div class="page-wrapper">
        <div class="content">
            <div class="row">
                <div class="col-sm-4 col-3">
                    <h4 class="page-title">VACCINE PACKAGES</h4>
                </div>
            </div>
            <div class="row">
                <div class="col-md-11" style="margin: 0 auto;">
                    <div class="table-responsive">
                        <form method="post" action="ControllerListVaccinePackage">
                            <table id="mytable" class="table table-striped custom-table">
                                <thead>
                                    <tr>
                                        <!--<th style="min-width:200px;">Name</th>-->
                                        <th style="text-align: center;width:100px ">Package ID</th>
                                        <th style="width:220px">Package Name</th>
                                        <th style="width:500px">Package Detail</th>
                                        <th style="min-width: 110px;text-align: center">Package Price</th>
                                        <th style="text-align: center">Vaccines in<br> Package</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <%
                                        ResultSet rsVaccinePackage = (ResultSet) request.getAttribute("rsVaccinePackage");
                                        while (rsVaccinePackage.next()) {
                                    %>
                                    <tr>
                                        <td style="text-align: center"><%= rsVaccinePackage.getString(1)%></td>
                                        <td><%= rsVaccinePackage.getString(2)%></td>
                                        <td><%= rsVaccinePackage.getString(3)%></td>
                                        <td style="text-align: center;font-weight: bold;font-style: italic;color: #1435C3"><fmt:formatNumber type="number" groupingUsed="true" value="<%= rsVaccinePackage.getString(4)%>"  /> <span>VND</span></td>
                                        <td style="text-align: center"><a href="packetvaccinedetaildoctor?PackageID=<%=rsVaccinePackage.getString(1)%>">Detail</a></td>
                                    </tr>
                                    <%}%>
                                </tbody>
                            </table>
                        </form>
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
        <script src="https://cdn.datatables.net/1.11.5/js/jquery.dataTables.min.js" type="text/javascript"></script>
        <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.11.5/css/jquery.dataTables.min.css">    
        <script>
            $(document).ready(function () {
                $('#mytable').DataTable();
            });
        </script>
    </body>
</html>
