<%-- 
    Document   : listCustomer
    Created on : 02-03-2022, 15:49:16
    Author     : a
--%>

<%@page import="dal.DaoCustomer"%>
<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <%@include file="components/headerAdmin.jsp" %>
    <div class="page-wrapper">
        <div class="content">
            <div class="row">
                <div class="col-sm-4 col-3">
                    <h4 class="page-title">CUSTOMERS</h4>
                </div>
                <!--                <div class="col-sm-8 col-9 text-right m-b-20">
                                    <a href="ControllerAddVaccine" class="btn btn-primary float-right btn-rounded"><i class="fa fa-plus"></i> Add Vaccine</a>
                                </div>-->
            </div>
            <div class="row">
                <div class="col-md-11" style="margin: 0 auto;">
                    <div class="table-responsive">
                        <form method="post" action="ControllerListCustomer">
                            <table class="table table-striped custom-table " id="mytable">
                                <thead>
                                    <tr>
                                        <th style="text-align: center">CustomerID</th>
                                        <th style="text-align: center">CustomerName</th>
                                        <th style="text-align: center">Email</th>
                                        <th style="text-align: center">Address</th>
                                        <th style="text-align: center">DOB</th>
                                        <th style="text-align: center">Phone</th>
                                        <th style="text-align: center">Gender</th>
                                        <th style="text-align: center">SocialID</th>
                                        <th class="text-right">Action</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <%
                                        ResultSet rsGetAllCus = (ResultSet) request.getAttribute("rsGetAllCus");

                                        while (rsGetAllCus.next()) {
                                            if (new DaoCustomer().getStatusByCustomerID(rsGetAllCus.getInt(1)) != 0) {
                                    %>
                                    <tr>
                                        <td style="text-align: center"><%= rsGetAllCus.getString(1)%></td>
                                        <td style="text-align: center"><%= rsGetAllCus.getString(2)%></td>
                                        <td style="text-align: center"><%= rsGetAllCus.getString(3)%></td>
                                        <td style="text-align: center"><%= rsGetAllCus.getString(4)%></td>
                                        <td style="text-align: center"><%= rsGetAllCus.getString(5)%></td>
                                        <td style="text-align: center"><%= rsGetAllCus.getString(6)%></td>
                                        <td style="text-align: center"><%= (rsGetAllCus.getBoolean(8) == true ? "Male" : "Female")%></td>
                                        <td style="text-align: center"><%= rsGetAllCus.getString(10)%></td>
                                        <td class="text-right">
                                            <div class="dropdown dropdown-action">
                                                <a href="#" class="action-icon dropdown-toggle" data-toggle="dropdown" aria-expanded="false"><i class="fa fa-ellipsis-v"></i></a>
                                                <div class="dropdown-menu dropdown-menu-right">
                                                    <!--<a class="dropdown-item" href="ControllerEditVaccine?VaccineID=<//%=rsGetAllCus.getString(1)%>"><i class="fa fa-pencil m-r-5"></i> Edit</a>-->
                                                    <a class="dropdown-item" href="ControllerDeactiveCustomer?CustomerID=<%=rsGetAllCus.getString(1)%>&AccountID=<%=rsGetAllCus.getString(7)%>"><i class="fa fa-trash-o m-r-5"></i> Deactive</a>
                                                </div>
                                            </div>
                                        </td>
                                    </tr>
                                    <%}}%>
                                </tbody>
                            </table>
                        </form>
                    </div>
                </div>
            </div>
        </div>
        <%@include file="components/footerAdmin.jsp" %>        
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
        <script src="https://cdn.datatables.net/1.11.5/js/jquery.dataTables.min.js" type="text/javascript"></script>
        <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.11.5/css/jquery.dataTables.min.css">    
        <script>
            $(document).ready(function () {
                $('#mytable').DataTable();
            });
        </script>
    </body>


    <!-- leaves23:23-->
</html>