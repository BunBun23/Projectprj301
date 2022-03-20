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
                            <th>Customer Name</th>
                            <th>Status</th>
                            <th>Detail</th>
                        </tr>
                    </thead>
                    <tbody>
                        <% ResultSet rsgetresevation = (ResultSet) request.getAttribute("rsgetresevation");
                            while (rsgetresevation.next()) {
                        %>
                        <tr>
                            <td><img src="common/homeAssets/img/<%= rsgetresevation.getString(1)%>" style="height: 100px ; width: 100px"></td>
                            <td><%= rsgetresevation.getString(2)%></td>
                            <td><%= rsgetresevation.getDate(3)%></td>
                            <td><%= rsgetresevation.getString(7)%></td>
                            <td><%= rsgetresevation.getString(8)%></td>
                            <td><%= rsgetresevation.getString(5)%></td>
                            <td><%= rsgetresevation.getString(11)%></td>
                            <td><%= rsgetresevation.getString(6)%></td>
                            <td><a href="doctorcheckmedicalrecord?vaccineid=<%=rsgetresevation.getInt(9)%>&customerid=<%=rsgetresevation.getInt(10)%>">Detail</a></td>
                        </tr>
                        <%}%>

                    </tbody>
                </table>
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
