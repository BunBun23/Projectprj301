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
                    <h4 class="page-title">VACCINES</h4>
                </div>
            </div>

            <div class="row">
                <div class="col-md-11" style="margin: 0 auto;">
                    <div class="table-responsive">
                        <table id="mytable" class="table table-striped custom-table">
                            <thead>
                                <tr>
                                    <th style="text-align: center;width: 175px">Customer Name</th>
                                    <th style="text-align: center;width: 175px">Detail</th>
                                </tr>
                            </thead>
                            <tbody>
                                <%
                                    ResultSet rsgetusername = (ResultSet) request.getAttribute("rsgetusername");
                                    while (rsgetusername.next()) {
                                %>
                                <tr>
                                    <td style="text-align: center;"><%= rsgetusername.getString(1)%></td>
                                    <td style="text-align: center"><a href="doctorviewdetailmedicalrecord?username=<%=rsgetusername.getString(1)%>">Detail</a></td>
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
        <script src="https://cdn.datatables.net/1.11.5/js/jquery.dataTables.min.js" type="text/javascript"></script>
        <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.11.5/css/jquery.dataTables.min.css">    
        <script>
            $(document).ready(function () {
                $('#mytable').DataTable();
            });
        </script>
    </body>


    <!-- employees23:22-->
</html>
