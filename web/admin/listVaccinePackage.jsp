<%-- 
    Document   : listVaccinePackage
    Created on : 23-02-2022, 00:21:31
    Author     : a
--%>

<%@page import="dal.DaoVaccinePackage"%>
<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"  %> 
<html lang="en">
    <%@include file="components/headerAdmin.jsp" %>
    <div class="page-wrapper">
        <div class="content">
            <div class="row">
                <div class="col-sm-4 col-3">
                    <h4 class="page-title">VACCINE PACKAGES</h4>
                </div>
                <div class="col-sm-8 col-9 text-right m-b-20">
                    <a href="ControllerAddVaccinePackage" class="btn btn-primary float-right btn-rounded"><i class="fa fa-plus"></i> Add Package</a>
                </div>
            </div>
<!--            <div class="row filter-row col-lg-8 offset-lg-2">
                <div class="col-sm-9 ">
                    <div class="form-group form-focus">
                        <label class="focus-label">Search</label>
                        <input type="search" id="searchBox" class="form-control floating">
                    </div>
                </div>
                <div class="col-sm-3 col-9 text-right m-b-20">
                    <a href="ControllerAddVaccinePackage" style="border-radius: 30px"  class="btn btn-primary float-right btn-rounded"><i class="fa fa-plus"></i> Add Package</a>
                </div>
            </div>-->
            <div class="row">
                <div class="col-md-11" style="margin: 0 auto;">
                    <div class="table-responsive">
                        <form method="post" action="ControllerListVaccinePackage">
                            <table class="table table-striped custom-table" id="mytable">
                                <thead>
                                    <tr>
                                        <!--<th style="min-width:200px;">Name</th>-->
                                        <th style="text-align: center;width:100px ">Package ID</th>
                                        <th style="width:220px">Package Name</th>
                                        <th style="width:500px">Package Detail</th>
                                        <th style="min-width: 110px;text-align: center">Package Price</th>
                                        <th style="text-align: center">Vaccines in Package</th>
                                        <th class="text-right">Action</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <%
                                        ResultSet rsVaccinePackage = (ResultSet) request.getAttribute("rsVaccinePackage");
                                        
                                        while (rsVaccinePackage.next()) {
                                            if (new DaoVaccinePackage().getStatusByPackageID(rsVaccinePackage.getInt(1))!=0) {
                                    %>
                                    <tr>
                                        <td style="text-align: center"><%= rsVaccinePackage.getString(1)%></td>
                                        <td><%= rsVaccinePackage.getString(2)%></td>
                                        <td><%= rsVaccinePackage.getString(3)%></td>
                                        <td style="text-align: center;font-weight: bold;font-style: italic;color: #1435C3"><fmt:formatNumber type="number" groupingUsed="true" value="<%= rsVaccinePackage.getString(4)%>"  /> <span>VND</span></td>
                                        <td style="text-align: center"><a href="ControllerPackageDetail?PackageID=<%=rsVaccinePackage.getString(1)%>">Detail</a></td>
                                        <td class="text-right">
                                            <div class="dropdown dropdown-action">
                                                <a href="#" class="action-icon dropdown-toggle" data-toggle="dropdown" aria-expanded="false"><i class="fa fa-ellipsis-v"></i></a>
                                                <div class="dropdown-menu dropdown-menu-right">
                                                    <a class="dropdown-item" href="ControllerEditVaccinePackage?PackageID=<%=rsVaccinePackage.getString(1)%>"><i class="fa fa-pencil m-r-5"></i> Edit</a>
                                                    <a class="dropdown-item" href="ControllerDeactiveVaccinePackage?PackageID=<%=rsVaccinePackage.getString(1)%>"><i class="fa fa-trash-o m-r-5"></i> Deactive</a>
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
